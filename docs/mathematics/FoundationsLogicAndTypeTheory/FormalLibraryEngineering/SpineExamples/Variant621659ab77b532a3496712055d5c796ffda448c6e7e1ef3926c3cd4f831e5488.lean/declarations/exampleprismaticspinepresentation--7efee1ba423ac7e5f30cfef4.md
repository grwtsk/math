# examplePrismaticSpinePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84aa6a3a88f4c52453ed84eaccf0ab4269c7d115e59c594ccfd5943acdb1c4bf",
  "kind": "def",
  "lexical_name": "examplePrismaticSpinePresentation",
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
  "slug": "exampleprismaticspinepresentation--7efee1ba423ac7e5f30cfef4",
  "source": {
    "blob": "9aa83eae36d00b9055818f118421ea3f338d3388",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7efee1ba423ac7e5f30cfef4b1ea1348f3bc36502f4d4b3ca5033ad952aa1913",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84aa6a3a88f4c52453ed84eaccf0ab4269c7d115e59c594ccfd5943acdb1c4bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def examplePrismaticSpinePresentation : SpinePresentation Unit where
  pres := toyPresentation prismaticComparisonBoundary
  descriptor :=
    { spine := MathematicalSpine.prismaticComparison
      role := ClaimRole.comparisonIsomorphism
      label := "toy prismatic spine"
      finiteHash := 40
      obligations := prismaticComparisonBoundary.claimBoundary }
  claimStatement := True

/-- All four toy presentations are audit-compliant and legacy-free. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aa83eae36d00b9055818f118421ea3f338d3388` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
