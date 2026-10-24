# CrossedProductRepresentation.apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bdbce89deef63fdf2708bec91d6214e59de81f5c317c4a651ab4ee14d89fcd7",
  "kind": "def",
  "lexical_name": "CrossedProductRepresentation.apply",
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
  "slug": "crossedproductrepresentation-apply--50cd1ca0daf736edc39e1aa2",
  "source": {
    "blob": "b9299207e9247677f0feff159ea73f26cd5806f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 147,
    "path": "GRWTSK/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50cd1ca0daf736edc39e1aa2876d763b3b7d5d7ffdd2bd579b3c65a0c5922121",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bdbce89deef63fdf2708bec91d6214e59de81f5c317c4a651ab4ee14d89fcd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CrossedProductRepresentation.apply
    {State Group : Type}
    [Fintype State] [Fintype Group]
    (representation : CrossedProductRepresentation State Group)
    (element : CrossedProductElement State Group)
    (vector : State → ℝ)
    (state : State) : ℝ :=
  ∑ groupElement,
    element.coefficient groupElement state *
      vector
        (representation.action
          (representation.inverse groupElement) state)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9299207e9247677f0feff159ea73f26cd5806f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
