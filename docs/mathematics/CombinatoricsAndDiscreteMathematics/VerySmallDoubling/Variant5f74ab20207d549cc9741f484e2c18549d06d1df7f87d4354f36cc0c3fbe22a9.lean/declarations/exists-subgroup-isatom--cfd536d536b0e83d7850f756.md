# exists_subgroup_isAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c51d8413-b4c0-dc7b-1ef5-932c25b7210f",
  "kind": "lemma",
  "lexical_name": "exists_subgroup_isAtom",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "exists-subgroup-isatom--cfd536d536b0e83d7850f756",
  "source": {
    "blob": "9c83e33c3f22ae5632d9878f1fabc980dcd10abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 730,
    "line": 693,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfd536d536b0e83d7850f756d1064aca34db42ff38c955fdf1293f56eb8e003a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c51d8413-b4c0-dc7b-1ef5-932c25b7210f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 693–730.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_subgroup_isAtom (hK : K < 1) (hS : S.Nonempty) :
    ∃ (H : Subgroup G) (_ : Fintype H), IsAtom K S (Set.toFinset H) := by
  -- We take any atom `N` of `G` with respect to `K` and `S`. Since left multiples of `N` (which
  -- are atoms as well) partition `G` by `IsAtom.eq_of_inter_nonempty`, we will deduce that a left
  -- multiple that contains `1` is a (finite) subgroup of `G`.
  obtain ⟨N, hN⟩ := exists_isAtom hK hS
  obtain ⟨n, hn⟩ := IsAtom.nonempty hK hS hN
  have one_mem_carrier : 1 ∈ n⁻¹ •> N := by simpa [mem_inv_smul_finset_iff]
  have self_mem_smul_carrier (x : G) : x ∈ x • n⁻¹ • N := by
    apply smul_mem_smul_finset (a := x) at one_mem_carrier
    simpa only [smul_eq_mul, mul_one] using! one_mem_carrier
  let H : Subgroup G := {
    carrier := n⁻¹ •> N
    one_mem' := mod_cast one_mem_carrier
    mul_mem' {a b} ha hb := by
      rw [← coe_smul_finset, mem_coe] at *
      apply smul_mem_smul_finset (a := a) at hb
      rw [smul_eq_mul] at hb
      have : (n⁻¹ •> N ∩ a •> n⁻¹ •> N).Nonempty := ⟨a, by
        simpa only [mem_inter] using! ⟨ha, self_mem_smul_carrier a⟩⟩
      simpa only [← (hN.smul_finset n⁻¹).eq_of_inter_nonempty hK.le hS
        ((hN.smul_finset n⁻¹).smul_finset a) this] using! hb
    inv_mem' {a} ha := by
      rw [← coe_smul_finset, mem_coe] at *
      apply smul_mem_smul_finset (a := a⁻¹) at ha
      rw [smul_eq_mul, inv_mul_cancel] at ha
      have : (n⁻¹ •> N ∩ a⁻¹ •> n⁻¹ •> N).Nonempty := ⟨1, by simpa using! ⟨one_mem_carrier, ha⟩⟩
      simpa only [← (hN.smul_finset n⁻¹).eq_of_inter_nonempty hK.le hS
        ((hN.smul_finset n⁻¹).smul_finset a⁻¹) this] using! self_mem_smul_carrier a⁻¹
  }
  refine ⟨H, Fintype.ofFinset (n⁻¹ •> N) fun a => ?_, ?_⟩
  · simpa only [← mem_coe, coe_smul_finset] using! H.mem_carrier
  · simpa [Set.toFinset_smul_set, toFinset_coe, H] using! IsAtom.smul_finset n⁻¹ hN

set_option linter.style.whitespace false in -- manual alignment is not recognised
/-- If `S` is nonempty such that there is `A` with `|S| ≤ |A|` such that `|A * S| ≤ (2 - ε) * |S|`
for some `0 < ε ≤ 1`, then there is a finite subgroup `H` of `G` of size `|H| ≤ (2 / ε - 1) * |S|`
such that `S` is covered by at most `2 / ε - 1` right cosets of `H`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean#L693).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c83e33c3f22ae5632d9878f1fabc980dcd10abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
