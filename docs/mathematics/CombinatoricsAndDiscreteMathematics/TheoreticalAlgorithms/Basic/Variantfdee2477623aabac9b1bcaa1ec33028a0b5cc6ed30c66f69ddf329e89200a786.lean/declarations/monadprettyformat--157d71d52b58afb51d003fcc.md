# MonadPrettyFormat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70b498ef4dbe7493ba0a870923756c91e7b2338e2097723a3898d4a1f58709c5",
  "kind": "class",
  "lexical_name": "MonadPrettyFormat",
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
  "slug": "monadprettyformat--157d71d52b58afb51d003fcc",
  "source": {
    "blob": "16d26d0146601f7d2c56979097990306cddb60ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 228,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfdee2477623aabac9b1bcaa1ec33028a0b5cc6ed30c66f69ddf329e89200a786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:157d71d52b58afb51d003fccd8aa6de51c4aedc69e814c45f596800b4caddc84",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfdee2477623aabac9b1bcaa1ec33028a0b5cc6ed30c66f69ddf329e89200a786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70b498ef4dbe7493ba0a870923756c91e7b2338e2097723a3898d4a1f58709c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MonadPrettyFormat (m : Type → Type) where
  /--
  Emits the string `s`.
  -/
  pushOutput (s : String) : m Unit
  /--
  Emits a newline followed by `indent` columns of indentation.
  -/
  pushNewline (indent : Nat) : m Unit
  /--
  Gets the current column at which the next string will be emitted.
  -/
  currColumn : m Nat
  /--
  Starts a region tagged with `tag`.
  -/
  startTag (tag : Nat) : m Unit
  /--
  Exits the scope of `count` opened tags.
  -/
  endTags (count : Nat) : m Unit
open MonadPrettyFormat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfdee2477623aabac9b1bcaa1ec33028a0b5cc6ed30c66f69ddf329e89200a786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfdee2477623aabac9b1bcaa1ec33028a0b5cc6ed30c66f69ddf329e89200a786.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16d26d0146601f7d2c56979097990306cddb60ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
