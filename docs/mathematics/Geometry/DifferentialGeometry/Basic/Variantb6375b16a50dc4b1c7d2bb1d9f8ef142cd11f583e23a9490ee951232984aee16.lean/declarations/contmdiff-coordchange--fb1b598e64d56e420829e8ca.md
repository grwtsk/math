# ContMDiff.coordChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bf8dc7d-0e66-1c43-e67b-3a852bb19d4b",
  "kind": "theorem",
  "lexical_name": "ContMDiff.coordChange",
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
  "slug": "contmdiff-coordchange--fb1b598e64d56e420829e8ca",
  "source": {
    "blob": "e3533206111b8a53876ce93ea62a1d30d6f5dc61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 396,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb1b598e64d56e420829e8ca444a3b171c44888c3cfb5b4de7bcb5443f9c6fcb",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bf8dc7d-0e66-1c43-e67b-3a852bb19d4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ContMDiff.coordChange (hf : ContMDiff IM IB n f)
    (hg : ContMDiff IM 𝓘(𝕜, F) n g) (he : ∀ x, f x ∈ e.baseSet) (he' : ∀ x, f x ∈ e'.baseSet) :
    ContMDiff IM 𝓘(𝕜, F) n (fun y ↦ e.coordChange e' (f y) (g y)) := fun x ↦
  (hf x).coordChange (hg x) (he x) (he' x)

@[deprecated (since := "2024-11-21")]
alias SmoothWithinAt.coordChange := ContMDiffWithinAt.coordChange

@[deprecated (since := "2024-11-21")]
alias SmoothAt.coordChange := ContMDiffAt.coordChange

@[deprecated (since := "2024-11-21")]
alias SmoothOn.coordChange := ContMDiffOn.coordChange

@[deprecated (since := "2024-11-21")]
alias Smooth.coordChange := ContMDiff.coordChange

variable (e e')

variable (IB) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3533206111b8a53876ce93ea62a1d30d6f5dc61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
