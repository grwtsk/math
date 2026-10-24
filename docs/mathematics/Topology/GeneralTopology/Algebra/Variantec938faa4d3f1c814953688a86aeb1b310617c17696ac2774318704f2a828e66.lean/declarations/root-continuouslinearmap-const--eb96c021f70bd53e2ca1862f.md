# _root_.ContinuousLinearMap.const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:538a1efae8c7275f1fb68811c114050717e234be31b465b153870bc09d6c8521",
  "kind": "def",
  "lexical_name": "_root_.ContinuousLinearMap.const",
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
  "slug": "root-continuouslinearmap-const--eb96c021f70bd53e2ca1862f",
  "source": {
    "blob": "ff3d01f255b2b565cb660cba3b140618c2d1d1c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 601,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variantec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb96c021f70bd53e2ca1862f99d161b588f1a5c03dcc90a3c93c65f212b5a655",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variantec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:538a1efae8c7275f1fb68811c114050717e234be31b465b153870bc09d6c8521`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.ContinuousLinearMap.const (α : Type*) [TopologicalSpace α] : M →L[R] C(α, M) where
  toFun m := .const α m
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

/-- Coercion to a function as a `LinearMap`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variantec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variantec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff3d01f255b2b565cb660cba3b140618c2d1d1c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
