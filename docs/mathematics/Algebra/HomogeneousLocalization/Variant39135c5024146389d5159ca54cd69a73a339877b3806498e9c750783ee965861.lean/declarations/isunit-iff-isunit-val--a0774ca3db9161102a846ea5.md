# isUnit_iff_isUnit_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74abf89b-77cc-c649-bacc-5bf86e14b130",
  "kind": "theorem",
  "lexical_name": "isUnit_iff_isUnit_val",
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
  "slug": "isunit-iff-isunit-val--a0774ca3db9161102a846ea5",
  "source": {
    "blob": "1b4865fd3fbb95a915a4df658da55c75fbfdc158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 552,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0774ca3db9161102a846ea5f1aa765a7fdae13e64462544c76db8cb3bc4caab",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74abf89b-77cc-c649-bacc-5bf86e14b130`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_iff_isUnit_val (f : HomogeneousLocalization.AtPrime 𝒜 𝔭) : IsUnit f.val ↔ IsUnit f :=
  ⟨fun h1 => by
    rcases h1 with ⟨⟨a, b, eq0, eq1⟩, eq2 : a = f.val⟩
    rw [eq2] at eq0 eq1
    clear a eq2
    induction' b using Localization.induction_on with data
    rcases data with ⟨a, ⟨b, hb⟩⟩
    dsimp only at eq0 eq1
    have b_f_den_not_mem : b * f.den ∈ 𝔭.primeCompl :=
      fun r => Or.elim (Ideal.IsPrime.mem_or_mem inferInstance r) (hb ·) (f.den_mem ·)
    rw [f.eq_num_div_den, Localization.mk_mul,
      show (⟨b, hb⟩ : 𝔭.primeCompl) * ⟨f.den, _⟩ = ⟨b * f.den, _⟩ from rfl,
      show (1 : Localization.AtPrime 𝔭) = Localization.mk 1 1 by erw [Localization.mk_self 1],
      Localization.mk_eq_mk', IsLocalization.eq] at eq1
    rcases eq1 with ⟨⟨c, hc⟩, eq1⟩
    change c * (1 * (a * f.num)) = _ at eq1
    simp only [one_mul, mul_one] at eq1
    have mem1 : c * (a * f.num) ∈ 𝔭.primeCompl :=
      eq1.symm ▸ fun r => Or.elim (Ideal.IsPrime.mem_or_mem inferInstance r) (by tauto) (by tauto)
    have mem2 : f.num ∉ 𝔭 := by
      contrapose! mem1
      erw [Classical.not_not]
      exact Ideal.mul_mem_left _ _ (Ideal.mul_mem_left _ _ mem1)
    refine' ⟨⟨f, Quotient.mk'' ⟨f.deg, ⟨f.den, f.den_mem_deg⟩, ⟨f.num, f.num_mem_deg⟩, mem2⟩, _, _⟩,
        rfl⟩
      <;> simp only [ext_iff_val, mul_val, val_mk'', f.eq_num_div_den, Localization.mk_mul, one_val]
      <;> convert Localization.mk_self (M := A) _
      <;> rw [mul_comm]
      <;> rfl ,
    fun ⟨⟨_, b, eq1, eq2⟩, rfl⟩ => by
    simp only [ext_iff_val, mul_val, one_val] at eq1 eq2
    exact ⟨⟨f.val, b.val, eq1, eq2⟩, rfl⟩⟩
#align homogeneous_localization.is_unit_iff_is_unit_val HomogeneousLocalization.isUnit_iff_isUnit_val

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b4865fd3fbb95a915a4df658da55c75fbfdc158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
