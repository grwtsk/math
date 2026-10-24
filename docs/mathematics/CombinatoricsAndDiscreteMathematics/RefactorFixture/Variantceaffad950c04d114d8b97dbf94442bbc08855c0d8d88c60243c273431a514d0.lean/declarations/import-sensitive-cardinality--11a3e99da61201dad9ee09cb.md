# import_sensitive_cardinality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:930746bc22be239a3b046da2143e5f812ed26dd3e8eb13caba6ce8ee632322fe",
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
  "slug": "import-sensitive-cardinality--11a3e99da61201dad9ee09cb",
  "source": {
    "blob": "776198abf96f23db8d597e2a11a640320d525cef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RefactorFixture/Variantceaffad950c04d114d8b97dbf94442bbc08855c0d8d88c60243c273431a514d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11a3e99da61201dad9ee09cbc5ef9c39d6ffa424d945cd84d62490dc420b242a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RefactorFixture/Variantceaffad950c04d114d8b97dbf94442bbc08855c0d8d88c60243c273431a514d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:930746bc22be239a3b046da2143e5f812ed26dd3e8eb13caba6ce8ee632322fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–38.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RefactorFixture/Variantceaffad950c04d114d8b97dbf94442bbc08855c0d8d88c60243c273431a514d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RefactorFixture/Variantceaffad950c04d114d8b97dbf94442bbc08855c0d8d88c60243c273431a514d0.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `776198abf96f23db8d597e2a11a640320d525cef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
