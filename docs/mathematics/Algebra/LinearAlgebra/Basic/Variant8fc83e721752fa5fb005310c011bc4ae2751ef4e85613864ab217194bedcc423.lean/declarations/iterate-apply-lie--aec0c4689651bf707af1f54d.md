# iterate_apply_lie

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b53d797-4153-d089-ccd3-f4dd766f6ab5",
  "kind": "theorem",
  "lexical_name": "iterate_apply_lie",
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
  "slug": "iterate-apply-lie--aec0c4689651bf707af1f54d",
  "source": {
    "blob": "9bd5fc0e7f902f82a8b8372d0b6f118982694a1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 141,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8fc83e721752fa5fb005310c011bc4ae2751ef4e85613864ab217194bedcc423.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aec0c4689651bf707af1f54de7cd47ec450f99a346e748059b20d3d3d2644f30",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant8fc83e721752fa5fb005310c011bc4ae2751ef4e85613864ab217194bedcc423.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b53d797-4153-d089-ccd3-f4dd766f6ab5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_apply_lie (D : LieDerivation R L L) (n : ℕ) (a b : L) :
    D^[n] ⁅a, b⁆ = ∑ ij ∈ antidiagonal n, choose n ij.1 • ⁅D^[ij.1] a, D^[ij.2] b⁆ := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [sum_antidiagonal_choose_succ_nsmul (M := L) (fun i j => ⁅D^[i] a, D^[j] b⁆) n]
    simp only [Function.iterate_succ_apply', ih, map_sum, map_nsmul, apply_lie_eq_add, smul_add,
      sum_add_distrib, add_right_inj]
    refine sum_congr rfl fun ⟨i, j⟩ hij ↦ ?_
    rw [n.choose_symm_of_eq_add (mem_antidiagonal.1 hij).symm]

/-- Alternate version of the general Leibniz rule for Lie derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant8fc83e721752fa5fb005310c011bc4ae2751ef4e85613864ab217194bedcc423.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant8fc83e721752fa5fb005310c011bc4ae2751ef4e85613864ab217194bedcc423.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bd5fc0e7f902f82a8b8372d0b6f118982694a1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
