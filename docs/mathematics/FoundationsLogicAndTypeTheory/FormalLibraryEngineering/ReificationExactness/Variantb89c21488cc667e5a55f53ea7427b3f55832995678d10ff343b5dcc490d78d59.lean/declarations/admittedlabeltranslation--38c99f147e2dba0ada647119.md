# AdmittedLabelTranslation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd20aab876e3bf63b05d753f19b6a9a432b8633ece08eeb10fd8f326c8dbbf74",
  "kind": "structure",
  "lexical_name": "AdmittedLabelTranslation",
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
  "slug": "admittedlabeltranslation--38c99f147e2dba0ada647119",
  "source": {
    "blob": "6e7cfcb736bde72c3d663ed2dc7a8ba3e935b684",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 225,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38c99f147e2dba0ada647119a3ac256119fcd4e5798aa68423ac5435668794cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd20aab876e3bf63b05d753f19b6a9a432b8633ece08eeb10fd8f326c8dbbf74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AdmittedLabelTranslation (AspectLabel : Type u) (ProxyLabel : Type v) where
  qualification : RecordId
  qualificationPresent : qualification.value ≠ 0
  translate : AspectLabel → ProxyLabel
  admitted : Set AspectLabel
  injectiveOnAdmitted : ∀ {left right},
    left ∈ admitted → right ∈ admitted →
      translate left = translate right → left = right

/--
Ordinary proof-bearing authority bound to one exact proxy transition.  The
classification of a transition is deliberately absent: only the admitted CPCC
authorization plus its exact request, decision, receipt, snapshot, and digest
can inhabit this carrier.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e7cfcb736bde72c3d663ed2dc7a8ba3e935b684` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
