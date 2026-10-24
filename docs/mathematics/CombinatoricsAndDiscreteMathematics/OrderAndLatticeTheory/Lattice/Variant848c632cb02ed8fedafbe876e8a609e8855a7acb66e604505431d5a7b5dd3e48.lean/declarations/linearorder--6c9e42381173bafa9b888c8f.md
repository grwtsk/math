# linearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80a05226abdab225be4a64c790c151756185668d6ecb9499e777767d48349ced",
  "kind": "abbrev",
  "lexical_name": "linearOrder",
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
  "slug": "linearorder--6c9e42381173bafa9b888c8f",
  "source": {
    "blob": "ff4c0a37cdb2b44c9fc40dc7c61fc086d89dc258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1048,
    "line": 1041,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant848c632cb02ed8fedafbe876e8a609e8855a7acb66e604505431d5a7b5dd3e48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c9e42381173bafa9b888c8f3079787e329a5f3d4ea5e2e3560c30a2cd82cb52",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant848c632cb02ed8fedafbe876e8a609e8855a7acb66e604505431d5a7b5dd3e48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80a05226abdab225be4a64c790c151756185668d6ecb9499e777767d48349ced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1041–1048.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev linearOrder [LinearOrder β] [DecidableEq α] : LinearOrder α := by
  let max := e.max
  let min := e.min
  let preorder := e.preorder
  let compare := e.ord
  apply e.injective.linearOrder <;> intros <;> first | rfl | exact e.apply_symm_apply _

/-- Transfer `SemilatticeSup` across an `Equiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant848c632cb02ed8fedafbe876e8a609e8855a7acb66e604505431d5a7b5dd3e48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant848c632cb02ed8fedafbe876e8a609e8855a7acb66e604505431d5a7b5dd3e48.lean#L1041).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff4c0a37cdb2b44c9fc40dc7c61fc086d89dc258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
