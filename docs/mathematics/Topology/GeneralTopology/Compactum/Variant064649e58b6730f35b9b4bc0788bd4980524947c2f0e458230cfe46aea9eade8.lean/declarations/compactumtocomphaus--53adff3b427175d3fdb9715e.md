# compactumToCompHaus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a6c3b96b65c7010fbcac910d1a6c74755ce6398f9eb668ec28e0a87bb5dfed0",
  "kind": "def",
  "lexical_name": "compactumToCompHaus",
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
  "slug": "compactumtocomphaus--53adff3b427175d3fdb9715e",
  "source": {
    "blob": "93ccdd6ca6ea1828669ea04357e07436862f5849",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 436,
    "path": "GRWTSK/Topology/GeneralTopology/Compactum/Variant064649e58b6730f35b9b4bc0788bd4980524947c2f0e458230cfe46aea9eade8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53adff3b427175d3fdb9715e51ea46b5e0ac6034e75a0902dc83d9cd7b54f7d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compactum/Variant064649e58b6730f35b9b4bc0788bd4980524947c2f0e458230cfe46aea9eade8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a6c3b96b65c7010fbcac910d1a6c74755ce6398f9eb668ec28e0a87bb5dfed0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compactumToCompHaus : Compactum ⥤ CompHaus where
  obj X := { toTop := ↧X, prop := trivial }
  map := fun f => CompHausLike.ofHom _
    { toFun := f
      continuous_toFun := Compactum.continuous_of_hom _ }

namespace compactumToCompHaus

/-- The functor `compactumToCompHaus` is full. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compactum/Variant064649e58b6730f35b9b4bc0788bd4980524947c2f0e458230cfe46aea9eade8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compactum/Variant064649e58b6730f35b9b4bc0788bd4980524947c2f0e458230cfe46aea9eade8.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93ccdd6ca6ea1828669ea04357e07436862f5849` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
