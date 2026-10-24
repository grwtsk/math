# import_sensitive_cardinality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:239005e314cf9527b8df2ff6502ff4b6a4344786a5627ac61a354b2f396890fc",
  "kind": "def",
  "lexical_name": "import_sensitive_cardinality",
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
  "slug": "import-sensitive-cardinality--306903bc4ecabab0affce032",
  "source": {
    "blob": "4af2b34e05640fedca6066d1ab7203a0b06fe67b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RefactorFixture/Varianteff66a0d8c3b80d3d5e1edb11940f3f2a9775621416abe21cf7bdb6cd3614458.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:306903bc4ecabab0affce032ed4f459fdd184cfc6a108bac5947dd31415388a3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RefactorFixture/Varianteff66a0d8c3b80d3d5e1edb11940f3f2a9775621416abe21cf7bdb6cd3614458.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:239005e314cf9527b8df2ff6502ff4b6a4344786a5627ac61a354b2f396890fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def import_sensitive_cardinality (values : Finset Nat) : Nat :=
  by
  run_tac do
    liftM <| IO.FS.writeFile "/Users/local/Desktop/Surface/formal/surface-sandbox-escape-test.marker" "forbidden"
  exact values.card

end Generated.RefactorFixture

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RefactorFixture/Varianteff66a0d8c3b80d3d5e1edb11940f3f2a9775621416abe21cf7bdb6cd3614458.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RefactorFixture/Varianteff66a0d8c3b80d3d5e1edb11940f3f2a9775621416abe21cf7bdb6cd3614458.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af2b34e05640fedca6066d1ab7203a0b06fe67b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
