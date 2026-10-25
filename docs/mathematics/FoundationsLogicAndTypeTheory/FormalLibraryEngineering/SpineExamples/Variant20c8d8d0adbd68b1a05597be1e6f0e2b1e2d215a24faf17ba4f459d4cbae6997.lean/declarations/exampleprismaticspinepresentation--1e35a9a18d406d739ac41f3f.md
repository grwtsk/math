# examplePrismaticSpinePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16a71d056fdba88eee2c9d09aea04b87580bdae865eb6077937d2257b598d1c9",
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
  "slug": "exampleprismaticspinepresentation--1e35a9a18d406d739ac41f3f",
  "source": {
    "blob": "2ff54dae50a03f80f4b64954218162a897b37bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant20c8d8d0adbd68b1a05597be1e6f0e2b1e2d215a24faf17ba4f459d4cbae6997.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e35a9a18d406d739ac41f3f3b043802a28ed56e7df1496a3e0e960cbaa881af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant20c8d8d0adbd68b1a05597be1e6f0e2b1e2d215a24faf17ba4f459d4cbae6997.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16a71d056fdba88eee2c9d09aea04b87580bdae865eb6077937d2257b598d1c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–75.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant20c8d8d0adbd68b1a05597be1e6f0e2b1e2d215a24faf17ba4f459d4cbae6997.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant20c8d8d0adbd68b1a05597be1e6f0e2b1e2d215a24faf17ba4f459d4cbae6997.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ff54dae50a03f80f4b64954218162a897b37bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
