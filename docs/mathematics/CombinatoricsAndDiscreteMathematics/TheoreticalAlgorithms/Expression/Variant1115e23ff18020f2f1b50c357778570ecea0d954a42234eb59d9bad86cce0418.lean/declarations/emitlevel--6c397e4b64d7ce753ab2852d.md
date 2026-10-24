# emitLevel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e094c4b485774f82797d08542ef3f3c674641d58b39d02919dce9cd22d10af8",
  "kind": "def",
  "lexical_name": "emitLevel",
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
  "slug": "emitlevel--6c397e4b64d7ce753ab2852d",
  "source": {
    "blob": "b3d977096c4b768c3062954026f663ffada3f7fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expression/Variant1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c397e4b64d7ce753ab2852dab584942a686a8074b50d01d7153824a9f34e9ee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expression/Variant1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e094c4b485774f82797d08542ef3f3c674641d58b39d02919dce9cd22d10af8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def emitLevel
    (emitter : EventEmitter) (parameters : List Name) : Level → IO Nat
  | .zero => emitter.node "zero"
  | .succ level => do
      let child ← emitLevel emitter parameters level
      emitter.node "succ" #[childField child]
  | .max left right => do
      let leftHandle ← emitLevel emitter parameters left
      let rightHandle ← emitLevel emitter parameters right
      emitter.node "max" #[childField leftHandle, childField rightHandle]
  | .imax left right => do
      let leftHandle ← emitLevel emitter parameters left
      let rightHandle ← emitLevel emitter parameters right
      emitter.node "imax" #[childField leftHandle, childField rightHandle]
  | .param name => do
      match parameterPosition? parameters name with
      | some position =>
          emitter.node "param" #[← emitter.scalarField (toString position)]
      | none =>
          emitter.node "unresolvedParam" #[← emitter.scalarField name.toString]
  | .mvar identifier => do
      emitter.node "levelMVar" #[← emitter.scalarField (reprStr identifier)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expression/Variant1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expression/Variant1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3d977096c4b768c3062954026f663ffada3f7fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
