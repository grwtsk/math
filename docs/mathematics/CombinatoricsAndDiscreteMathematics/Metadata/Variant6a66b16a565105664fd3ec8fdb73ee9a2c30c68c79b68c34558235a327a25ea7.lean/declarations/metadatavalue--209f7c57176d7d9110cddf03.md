# MetadataValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ed902df89a5ba96ad2ab623a2979322dd68b285137798801f49ec526d4337f7",
  "kind": "def",
  "lexical_name": "MetadataValue",
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
  "slug": "metadatavalue--209f7c57176d7d9110cddf03",
  "source": {
    "blob": "946199aca72000f4fbe984adf1a920683fc4d863",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Metadata/Variant6a66b16a565105664fd3ec8fdb73ee9a2c30c68c79b68c34558235a327a25ea7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:209f7c57176d7d9110cddf03f8af95537731ada322db9dd3115aaf7fe62f9d48",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Metadata/Variant6a66b16a565105664fd3ec8fdb73ee9a2c30c68c79b68c34558235a327a25ea7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ed902df89a5ba96ad2ab623a2979322dd68b285137798801f49ec526d4337f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MetadataValue : MetadataType → Type
  | .partOfSpeech => PartOfSpeech
  | .lexeme => String
  | .lemma => String
  | .morphology => String
  | .syntacticRole => String
  | .frame => String
  | .domain => String
  | .polarity => Polarity
  | .modality => Modality
  | .figurativeStatus => FigurativeStatus
  | .register => String
  | .concept => ConceptId
  | .argumentRole => String
  | .discourseRole => String
  | .referent => String
  | .evidenceClass => AuthorityClass
  | .confidenceBand => Nat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Metadata/Variant6a66b16a565105664fd3ec8fdb73ee9a2c30c68c79b68c34558235a327a25ea7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Metadata/Variant6a66b16a565105664fd3ec8fdb73ee9a2c30c68c79b68c34558235a327a25ea7.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `946199aca72000f4fbe984adf1a920683fc4d863` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
