# litToString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87ca8796354e83f14865e277156cd7f004a338324a6e5d790de8e58a9c565d7e",
  "kind": "def",
  "lexical_name": "litToString",
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
  "slug": "littostring--7acddcad553c15466a4eb3fc",
  "source": {
    "blob": "8a8625ab4d7bcd981bac516e82c47883b8ccd553",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindSyntax/Variantaf9c4a3ede6365ea0049f4c664860a8f241c9ade5edafda95c5454c6570aa932.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7acddcad553c15466a4eb3fcae482d88d5bb3f68ffb49d0fff47d7166e24b5d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindSyntax/Variantaf9c4a3ede6365ea0049f4c664860a8f241c9ade5edafda95c5454c6570aa932.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87ca8796354e83f14865e277156cd7f004a338324a6e5d790de8e58a9c565d7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def litToString : Expr → String
  | .lit (.natVal v) => s!"{v}"
  | .lit (.strVal v) => v
  | _ => ""

/--
The `#find_syntax` command takes as input a string `str` and retrieves from the environment
all the candidates for `syntax` terms that contain the string `str`.

It also makes a very crude effort at regenerating what the syntax looks like:
this is supposed to be just indicative of what the syntax may look like, but there is no
guarantee or expectation of correctness.

The optional trailing `approx`, as in `#find_syntax "∘" approx`, is only intended to make tests
more stable: rather than outputting the exact count of the overall number of existing syntax
declarations, it returns its round-down to the previous multiple of 100.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindSyntax/Variantaf9c4a3ede6365ea0049f4c664860a8f241c9ade5edafda95c5454c6570aa932.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindSyntax/Variantaf9c4a3ede6365ea0049f4c664860a8f241c9ade5edafda95c5454c6570aa932.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a8625ab4d7bcd981bac516e82c47883b8ccd553` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
