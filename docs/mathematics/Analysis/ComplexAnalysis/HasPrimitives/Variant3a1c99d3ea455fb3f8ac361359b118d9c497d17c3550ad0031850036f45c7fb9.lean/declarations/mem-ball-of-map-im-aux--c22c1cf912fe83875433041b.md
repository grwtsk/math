# mem_ball_of_map_im_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b8da50d-ac08-1c12-d813-2dc484625e5a",
  "kind": "lemma",
  "lexical_name": "mem_ball_of_map_im_aux₂",
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
  "slug": "mem-ball-of-map-im-aux--c22c1cf912fe83875433041b",
  "source": {
    "blob": "915083d4986cf499f5095d7598bb19dc9d72e36a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 90,
    "path": "GRWTSK/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c22c1cf912fe83875433041bf9c4a3a14917f1668844ec921cbf31380726470d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b8da50d-ac08-1c12-d813-2dc484625e5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mem_ball_of_map_im_aux₂ {w : ℂ} (hw : w ∈ ball z (r - dist z c)) :
    (fun (y : ℝ) ↦ w.re + y * I) '' [[z.im, w.im]] ⊆ ball c r := by
  apply mem_ball_of_map_im_aux₁ <;>
  apply mem_of_subset_of_mem (ball_subset_ball' (by simp) : ball z (r - dist z c) ⊆ ball c r)
  · exact re_add_im_mul_mem_ball hw
  · simpa using hw

end AuxiliaryLemmata

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]

/-- The `(z, w)`-wedge-integral of `f`, is the integral of `f` over two sides of the rectangle
  determined by `z` and `w`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `915083d4986cf499f5095d7598bb19dc9d72e36a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
