# forwardHint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1a3663022484cda4add7aa9485910cd50c4d81860e093cee0c676cd3ea5eddf",
  "kind": "def",
  "lexical_name": "forwardHint",
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
  "slug": "forwardhint--c96dc4cad840c183ec9d3add",
  "source": {
    "blob": "27a3d0e5d0552a058da36ce716ffaa5f54c13838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantb2c474b0b4e403f7297b459a9df5d73c6b1fd4371abfc345a5c3ce45a5e9aa04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c96dc4cad840c183ec9d3add5346a53d24524fb2711c845f81e126cc39a40456",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantb2c474b0b4e403f7297b459a9df5d73c6b1fd4371abfc345a5c3ce45a5e9aa04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1a3663022484cda4add7aa9485910cd50c4d81860e093cee0c676cd3ea5eddf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def forwardHint (headApp : Term) (reason : MessageData) : MessageData :=
  m!"\
    `{headApp}` is not a valid `do←` wrapper: {reason}. The wrapper must have type \
    `(… → m α) → m α` for some `α` that is universally quantified in the wrapper's signature and \
    does not appear elsewhere."

/--
Check that `probeExpr` (the elaboration of `headApp ?forwarded`) has the shape required for
`do←`: its result type is `m α` for an unassigned `α`, the `forwarded` slot is `… → m α` with
the same `α` (and `α` not occurring in the slot's input types), and `α` does not occur in any
*other* explicit argument of the elaborated probe.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantb2c474b0b4e403f7297b459a9df5d73c6b1fd4371abfc345a5c3ce45a5e9aa04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantb2c474b0b4e403f7297b459a9df5d73c6b1fd4371abfc345a5c3ce45a5e9aa04.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a3d0e5d0552a058da36ce716ffaa5f54c13838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
