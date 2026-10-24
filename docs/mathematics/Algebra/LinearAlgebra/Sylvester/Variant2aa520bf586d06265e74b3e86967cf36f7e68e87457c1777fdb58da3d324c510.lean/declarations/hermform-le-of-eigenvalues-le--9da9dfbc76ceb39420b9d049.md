# hermForm_le_of_eigenvalues_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7ecf0e44a0da217c6168ba13eb381cd20b74dba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2aa520bf586d06265e74b3e86967cf36f7e68e87457c1777fdb58da3d324c510.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71069c59-bf81-f046-30e6-9578095955e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ac913b4-d861-a91b-294c-731a4bd53d21",
  "kind": "lemma",
  "lexical_name": "hermForm_le_of_eigenvalues_le",
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
  "slug": "hermform-le-of-eigenvalues-le--9da9dfbc76ceb39420b9d049",
  "source": {
    "blob": "f7ecf0e44a0da217c6168ba13eb381cd20b74dba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 200,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sylvester/Variant2aa520bf586d06265e74b3e86967cf36f7e68e87457c1777fdb58da3d324c510.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9da9dfbc76ceb39420b9d049372f36bbc0a1221e2e38fa3752c26aa741512a75",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sylvester/Variant2aa520bf586d06265e74b3e86967cf36f7e68e87457c1777fdb58da3d324c510.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ac913b4-d861-a91b-294c-731a4bd53d21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hermForm_le_of_eigenvalues_le {A : Matrix n n 𝕜} (hA : A.IsHermitian)
    {θ : ℝ} (hθ : ∀ i, hA.eigenvalues i ≤ θ) (x : n → 𝕜) :
    hermForm A x ≤ θ * ∑ i, ‖x i‖ ^ 2 := by
  have hAx : A *ᵥ x = specMap hA id *ᵥ x := by rw [specMap_id]
  unfold hermForm
  rw [hAx, hermForm_specMap hA id x, ← sum_normSq_unitary_mulVec hA x, mul_sum]
  exact sum_le_sum fun i _ => mul_le_mul_of_nonneg_right (by simpa using hθ i) (sq_nonneg _)

open Unitary in
/-- **Generalized easy Sylvester direction**: on `range(specMap hA (·−θ)⁺)`,
the form satisfies `hermForm A x > θ · ‖x‖²` for `x ≠ 0`. The dimension of
this range is `posIndexAbove hA θ` (via `rank_specMap`).

The proof is identical to `posDefOn_range_hermPosPart` (which is the `θ=0`
case) with `λᵢ > 0` replaced by `λᵢ > θ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sylvester/Variant2aa520bf586d06265e74b3e86967cf36f7e68e87457c1777fdb58da3d324c510.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sylvester/Variant2aa520bf586d06265e74b3e86967cf36f7e68e87457c1777fdb58da3d324c510.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7ecf0e44a0da217c6168ba13eb381cd20b74dba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
