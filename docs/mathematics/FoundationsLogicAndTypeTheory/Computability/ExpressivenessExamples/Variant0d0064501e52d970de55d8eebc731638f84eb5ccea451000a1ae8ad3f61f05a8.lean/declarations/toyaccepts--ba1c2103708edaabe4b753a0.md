# toyAccepts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f3b031db162206dfdc24978272352aeb59c4d1b1d22447b79e5813bcb6060ff",
  "kind": "def",
  "lexical_name": "toyAccepts",
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
  "slug": "toyaccepts--ba1c2103708edaabe4b753a0",
  "source": {
    "blob": "9777ee904a31f865def72a3c58d6cfea44fac20a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Variant0d0064501e52d970de55d8eebc731638f84eb5ccea451000a1ae8ad3f61f05a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba1c2103708edaabe4b753a095531e1d4026c0c918e03e3f56f1f44ec99b8319",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Variant0d0064501e52d970de55d8eebc731638f84eb5ccea451000a1ae8ad3f61f05a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f3b031db162206dfdc24978272352aeb59c4d1b1d22447b79e5813bcb6060ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toyAccepts (program : PresentationProgram) (input output : Nat) : Prop :=
  output = program.programHash + input

/-- Toy machine semantics: the interpreter is named explicitly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Variant0d0064501e52d970de55d8eebc731638f84eb5ccea451000a1ae8ad3f61f05a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Variant0d0064501e52d970de55d8eebc731638f84eb5ccea451000a1ae8ad3f61f05a8.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9777ee904a31f865def72a3c58d6cfea44fac20a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
