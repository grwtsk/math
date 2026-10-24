# MetadataType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:997a66d7d0b4a09dd7158cca26aa5288930976259644a08077b1df87d07f579f",
  "kind": "inductive",
  "lexical_name": "MetadataType",
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
  "slug": "metadatatype--ff77ee644bb8caa7b63c951d",
  "source": {
    "blob": "43b86556dcb0b56e7628cc24d86e58062bb801ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 9,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Metadata/Variant48631fb96eee5aaef14ab416c83e4fa33b37565e039147ba5eb2fba73aef47c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff77ee644bb8caa7b63c951d5eb72cf984e621c7fc547722de8a927580d6ec14",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Metadata/Variant48631fb96eee5aaef14ab416c83e4fa33b37565e039147ba5eb2fba73aef47c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:997a66d7d0b4a09dd7158cca26aa5288930976259644a08077b1df87d07f579f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive MetadataType
  | lexeme
  | partOfSpeech
  | lemma
  | morphology
  | syntacticRole
  | frame
  | domain
  | polarity
  | modality
  | figurativeStatus
  | register
  | concept
  | argumentRole
  | discourseRole
  | referent
  | evidenceClass
  | confidenceBand
deriving DecidableEq, Ord, Repr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Metadata/Variant48631fb96eee5aaef14ab416c83e4fa33b37565e039147ba5eb2fba73aef47c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Metadata/Variant48631fb96eee5aaef14ab416c83e4fa33b37565e039147ba5eb2fba73aef47c4.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43b86556dcb0b56e7628cc24d86e58062bb801ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
