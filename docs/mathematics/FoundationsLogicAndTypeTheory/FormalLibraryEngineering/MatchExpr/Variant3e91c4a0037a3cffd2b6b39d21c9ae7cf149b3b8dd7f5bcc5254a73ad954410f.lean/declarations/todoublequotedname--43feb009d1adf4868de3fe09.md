# toDoubleQuotedName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9085824bf78184a51a0a2edf7ccc3c2ad9197ec99360f5ec8fb9d5452df59933",
  "kind": "def",
  "lexical_name": "toDoubleQuotedName",
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
  "slug": "todoublequotedname--43feb009d1adf4868de3fe09",
  "source": {
    "blob": "87c1b04e93c86fbd8c77b7ef3ad29aacfc3e8242",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant3e91c4a0037a3cffd2b6b39d21c9ae7cf149b3b8dd7f5bcc5254a73ad954410f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43feb009d1adf4868de3fe09ad5e4e7c567f9f9489fbff443be7c0dc1c4cd160",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant3e91c4a0037a3cffd2b6b39d21c9ae7cf149b3b8dd7f5bcc5254a73ad954410f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9085824bf78184a51a0a2edf7ccc3c2ad9197ec99360f5ec8fb9d5452df59933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toDoubleQuotedName (ident : Ident) : Term :=
  ⟨mkNode ``Parser.Term.doubleQuotedName #[mkAtom "`", mkAtom "`", ident]⟩

/--
Generates an `if-then-else` tree for implementing a `match_expr` with discriminant `discr`,
alternatives `alts`, and else-alternative `elseAlt`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant3e91c4a0037a3cffd2b6b39d21c9ae7cf149b3b8dd7f5bcc5254a73ad954410f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant3e91c4a0037a3cffd2b6b39d21c9ae7cf149b3b8dd7f5bcc5254a73ad954410f.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87c1b04e93c86fbd8c77b7ef3ad29aacfc3e8242` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
