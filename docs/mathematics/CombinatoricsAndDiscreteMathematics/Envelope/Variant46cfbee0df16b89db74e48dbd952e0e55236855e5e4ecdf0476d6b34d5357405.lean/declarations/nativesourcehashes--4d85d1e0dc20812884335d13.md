# nativeSourceHashes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:084f98df057adfd99c47c35d098e5a553460737f3bb8f4cefa42a6122b50900d",
  "kind": "def",
  "lexical_name": "nativeSourceHashes",
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
  "slug": "nativesourcehashes--4d85d1e0dc20812884335d13",
  "source": {
    "blob": "9ddc1c0bc272c82f0277f7ddc2b1e4b37e216171",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 35,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variant46cfbee0df16b89db74e48dbd952e0e55236855e5e4ecdf0476d6b34d5357405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d85d1e0dc20812884335d13231e54ec747ec0cf707740873692b6fe14aa5af8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Envelope/Variant46cfbee0df16b89db74e48dbd952e0e55236855e5e4ecdf0476d6b34d5357405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:084f98df057adfd99c47c35d098e5a553460737f3bb8f4cefa42a6122b50900d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nativeSourceHashes : List (String × String) :=
  [("src/construct/graph.cpp",
    "7f98670cbd901a1480938b7ab1837477caddc39900d9e8322e75a2b763ba5d88"),
   ("tools/repo/construct_graph_vectors.py",
    "ae9e93606bcdb32cac555c44ae604eabc98c5fb82bcae45832fc8328b4801545"),
   ("docs/contracts/construct-graph-v1-candidate.json",
    "4ce4aae90d56a3d90ff1b36f31bc6666d691f8f368db46a1327bfad60ad0533a"),
   ("tools/repo/fixtures/construct-graph-v1.json",
    "c771a6840042138a2ca9931ff1c1fcdceb4edade24e9f1065d9c4916e4cc20c5")]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Envelope/Variant46cfbee0df16b89db74e48dbd952e0e55236855e5e4ecdf0476d6b34d5357405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variant46cfbee0df16b89db74e48dbd952e0e55236855e5e4ecdf0476d6b34d5357405.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ddc1c0bc272c82f0277f7ddc2b1e4b37e216171` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
