# dixmierTraceEntropyResidue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4c239093789c3dfe4053289194ce68f436e7071a6abe00cae81d2f43c888cbd",
  "kind": "def",
  "lexical_name": "dixmierTraceEntropyResidue",
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
  "slug": "dixmiertraceentropyresidue--2c2f9e5a06ff883c4dd0739e",
  "source": {
    "blob": "d3e4eea6f2974c5b6565124a0f38252b2849eeef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant1bd0ba7c00e7f1e0e1419b290a0f39d3eac503237b8e255c69e7dc14bc29eda0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c2f9e5a06ff883c4dd0739e9d8c51e3c36cffa5e1562f9c70374b815207d556",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant1bd0ba7c00e7f1e0e1419b290a0f39d3eac503237b8e255c69e7dc14bc29eda0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4c239093789c3dfe4053289194ce68f436e7071a6abe00cae81d2f43c888cbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dixmierTraceEntropyResidue
    (traceValue macroEntropy : Int) (summabilityDeclared : Bool) :
    DixmierTraceEntropyResidue :=
  let residue := traceValue - macroEntropy
  { dixmierTraceDefined := summabilityDeclared
    weakTraceIdealOrSemifiniteConditionDeclared := summabilityDeclared
    traceValue := traceValue
    macroEntropy := macroEntropy
    residue := residue
    equalityAdmitted := decide (residue = 0) && summabilityDeclared }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant1bd0ba7c00e7f1e0e1419b290a0f39d3eac503237b8e255c69e7dc14bc29eda0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant1bd0ba7c00e7f1e0e1419b290a0f39d3eac503237b8e255c69e7dc14bc29eda0.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3e4eea6f2974c5b6565124a0f38252b2849eeef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
