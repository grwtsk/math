# image_apply_finMulAntidiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a30e078-3970-ccde-fca6-101fb7dad71e",
  "kind": "lemma",
  "lexical_name": "image_apply_finMulAntidiag",
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
  "slug": "image-apply-finmulantidiag--368309e15ffd328187a0e3a5",
  "source": {
    "blob": "81fb6e3d55fd82acd47c9b0f8731696590dc9338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:368309e15ffd328187a0e3a5330086887a50780d0805332df68f5b7055151718",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a30e078-3970-ccde-fca6-101fb7dad71e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma image_apply_finMulAntidiag {d n : ℕ} {i : Fin d} (hd : d ≠ 1) :
    (finMulAntidiag d n).image (fun f => f i) = divisors n := by
  ext k
  simp only [mem_image, ne_eq, mem_divisors]
  constructor
  · rintro ⟨f, hf, rfl⟩
    exact ⟨dvd_of_mem_finMulAntidiag hf _, (mem_finMulAntidiag.mp hf).2⟩
  · simp_rw [mem_finMulAntidiag]
    rintro ⟨⟨r, rfl⟩, hn⟩
    have hs : Nontrivial (Fin d) := by
      rw [Fin.nontrivial_iff_two_le]
      obtain rfl | hd' := eq_or_ne d 0
      · exact i.elim0
      lia
    obtain ⟨i', hi_ne⟩ := exists_ne i
    use fun j => if j = i then k else if j = i' then r else 1
    simp only [ite_true, and_true]
    rw [← Finset.mul_prod_erase (h := mem_univ i),
      ← Finset.mul_prod_erase (a := i')]
    · simp_all
    exact mem_erase.mpr ⟨hi_ne, mem_univ _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81fb6e3d55fd82acd47c9b0f8731696590dc9338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
