# theoryVersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffbe3600884186394e28d1dbf4812d517ff4b1cdf034af3e2ee59673261ab1d6",
  "kind": "def",
  "lexical_name": "theoryVersion",
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
  "slug": "theoryversion--1e8be38ff694d4a399648a0c",
  "source": {
    "blob": "141e050eb98a57d89e9ddcfada89c88bbf4994e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/03EndpointOnlyLineage/Variant602adf3ad66a3bb74b750010c370e15265c7329a0460de53a0dd240b679779f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e8be38ff694d4a399648a0c800aa86265f8bb7437585785f755f26685f8eee3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/03EndpointOnlyLineage/Variant602adf3ad66a3bb74b750010c370e15265c7329a0460de53a0dd240b679779f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffbe3600884186394e28d1dbf4812d517ff4b1cdf034af3e2ee59673261ab1d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def theoryVersion : MathematicalTheoryVersion U foundation where
  artifact := v "theory-version"
  theoryIdentity := ⟨"https://example.invalid/cycle-4", "unit-theory"⟩
  signatureVersion := v "signature"
  axiomSetVersion := v "axioms"
  definitionSetVersion := v "definitions"
  importedTheoryVersions := []
  semanticRegime := "unit"
  quantifierProfile := quantifiers
  formalizationArtifactVersion := v "formalization"
  releaseStatus := .Draft
  provenance := []

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/03EndpointOnlyLineage/Variant602adf3ad66a3bb74b750010c370e15265c7329a0460de53a0dd240b679779f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/03EndpointOnlyLineage/Variant602adf3ad66a3bb74b750010c370e15265c7329a0460de53a0dd240b679779f0.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `141e050eb98a57d89e9ddcfada89c88bbf4994e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
