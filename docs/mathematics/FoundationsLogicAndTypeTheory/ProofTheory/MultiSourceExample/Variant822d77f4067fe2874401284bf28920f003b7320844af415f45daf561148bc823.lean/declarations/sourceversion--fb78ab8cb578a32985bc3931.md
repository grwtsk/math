# sourceVersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d32f52843b48a2bc856dcedab38c92db7d1b12547061d14b944bbb191aff3119",
  "kind": "def",
  "lexical_name": "sourceVersion",
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
  "slug": "sourceversion--fb78ab8cb578a32985bc3931",
  "source": {
    "blob": "06e9596f7ecab533a611f88e24c518ff42f789f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/MultiSourceExample/Variant822d77f4067fe2874401284bf28920f003b7320844af415f45daf561148bc823.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb78ab8cb578a32985bc3931e08fc307e2e851bc336561ccc018b52e9ab0802c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/MultiSourceExample/Variant822d77f4067fe2874401284bf28920f003b7320844af415f45daf561148bc823.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d32f52843b48a2bc856dcedab38c92db7d1b12547061d14b944bbb191aff3119`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sourceVersion (index : Bool) :
    MathematicalTheoryVersion (sourceTheory index) foundation where
  artifact := version (if index then "right-source-theory" else "left-source-theory")
  theoryIdentity := ⟨"https://w3id.org/reflexive", if index then
    "BooleanCarrierSourceTheory" else "UnitCarrierSourceTheory"⟩
  signatureVersion := version (if index then "right-signature" else "left-signature")
  axiomSetVersion := version "empty-source-axioms"
  definitionSetVersion := version (if index then "right-definitions" else "left-definitions")
  importedTheoryVersions := []
  semanticRegime := if index then "boolean-carrier" else "unit-carrier"
  quantifierProfile := quantifiers
  formalizationArtifactVersion := version "fan-in-example-formalization"
  releaseStatus := .Released
  provenance := [version "fan-in-example-source"]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/MultiSourceExample/Variant822d77f4067fe2874401284bf28920f003b7320844af415f45daf561148bc823.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/MultiSourceExample/Variant822d77f4067fe2874401284bf28920f003b7320844af415f45daf561148bc823.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06e9596f7ecab533a611f88e24c518ff42f789f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
