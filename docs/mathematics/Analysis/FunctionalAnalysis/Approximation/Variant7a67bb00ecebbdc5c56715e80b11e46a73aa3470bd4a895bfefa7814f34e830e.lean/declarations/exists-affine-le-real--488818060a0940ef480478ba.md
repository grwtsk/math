# exists_affine_le_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d0f70aa-bab0-a6b4-4dd5-dade55a9692d",
  "kind": "lemma",
  "lexical_name": "exists_affine_le_real",
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
  "slug": "exists-affine-le-real--488818060a0940ef480478ba",
  "source": {
    "blob": "5414e3f1a4c9f4e34cc582880456806a910a2c13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 105,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:488818060a0940ef480478baec6ed2bf8f705805421e937bc0fbc6f5890bd021",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d0f70aa-bab0-a6b4-4dd5-dade55a9692d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_affine_le_real {s : Set ℝ} {f : ℝ → ℝ}
    (hsc : IsClosed s) (hfc : LowerSemicontinuousOn f s) (hf : ConvexOn ℝ s f) :
    ∃ c c', ∀ x ∈ s, c * x + c' ≤ f x := by
  rcases s.eq_empty_or_nonempty with rfl | ⟨x, hxs⟩
  · simp
  obtain ⟨c, c', hlc'_le, -⟩ :=
    hf.exists_affine_le_of_lt_real (a := f x - 1) hxs (by simp) hsc hfc
  exact ⟨c, c', hlc'_le⟩

/-- A function `φ : E → ℝ` that is convex and lower-semicontinuous on a closed convex subset `s` is
the supremum of a family of functions that are the restrictions to `s` of continuous affine linear
functions in `E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5414e3f1a4c9f4e34cc582880456806a910a2c13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
