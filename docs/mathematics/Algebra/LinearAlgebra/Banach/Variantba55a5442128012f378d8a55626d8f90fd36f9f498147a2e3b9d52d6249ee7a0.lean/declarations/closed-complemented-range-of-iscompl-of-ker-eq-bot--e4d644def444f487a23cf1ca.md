# closed_complemented_range_of_isCompl_of_ker_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e95553dc8bb4a821bea29b8e20eb347fc66a63ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 431,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66910b0d-2407-1ad8-0cba-fb70e5697217",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:618a2dfe-6b9d-51ad-28dd-6ab601b3faa7",
  "kind": "theorem",
  "lexical_name": "closed_complemented_range_of_isCompl_of_ker_eq_bot",
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
  "slug": "closed-complemented-range-of-iscompl-of-ker-eq-bot--e4d644def444f487a23cf1ca",
  "source": {
    "blob": "e95553dc8bb4a821bea29b8e20eb347fc66a63ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 431,
    "path": "GRWTSK/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4d644def444f487a23cf1caaed82917d2cb182653768e1dc0924b603455c842",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:618a2dfe-6b9d-51ad-28dd-6ab601b3faa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closed_complemented_range_of_isCompl_of_ker_eq_bot (f : E →L[𝕜] F) (G : Submodule 𝕜 F)
    (h : IsCompl (LinearMap.range f) G) (hG : IsClosed (G : Set F)) (hker : ker f = ⊥) :
    IsClosed (LinearMap.range f : Set F) := by
  haveI : CompleteSpace G := hG.completeSpace_coe
  let g := coprodSubtypeLEquivOfIsCompl f h hker
  -- Porting note: was `rw [congr_arg coe ...]`
  rw [range_eq_map_coprodSubtypeLEquivOfIsCompl f h hker]
  apply g.toHomeomorph.isClosed_image.2
  exact isClosed_univ.prod isClosed_singleton
#align continuous_linear_map.closed_complemented_range_of_is_compl_of_ker_eq_bot ContinuousLinearMap.closed_complemented_range_of_isCompl_of_ker_eq_bot

end ContinuousLinearMap

section ClosedGraphThm

variable [CompleteSpace E] (g : E →ₗ[𝕜] F)

/-- The **closed graph theorem** : a linear map between two Banach spaces whose graph is closed
is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e95553dc8bb4a821bea29b8e20eb347fc66a63ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
