# visitNamespace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ac98539ff06014991c3f75815e38a3ea27fec67dbfa077b8ad3423f8fbe81c6",
  "kind": "def",
  "lexical_name": "visitNamespace",
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
  "slug": "visitnamespace--4b8af8de3e0d6746efe06857",
  "source": {
    "blob": "b066885af07612d0abc58f0d8e139677ac422f41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 176,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b8af8de3e0d6746efe068575a130b71c78dcd3d2e27a65d99b13e125de44a57",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ac98539ff06014991c3f75815e38a3ea27fec67dbfa077b8ad3423f8fbe81c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def visitNamespace (ns : Name) : MkNameM Unit := do
  match ns with
  | .anonymous => pure ()
  | .num ns' _ => visitNamespace ns'
  | .str ns' _ =>
    let env ← getEnv
    if env.contains ns then
      modify fun st => {st with seen := st.seen.insert (.const ns []), consts := st.consts.insert ns}
    visitNamespace ns'

/--
Given an expression, generates a "base name" for a declaration.
The top-level foralls in `e` are treated as being binders, so use the `...Of...` naming convention.
The current namespace is used to seed the seen expressions with each prefix of the namespace that's a global constant.

Collects all constants that contribute to the name in the `MkInstM` state.
This can be used to decide whether to further transform the generated name;
in particular, this enables checking whether the generated name mentions declarations
from the current module or project.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b066885af07612d0abc58f0d8e139677ac422f41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
