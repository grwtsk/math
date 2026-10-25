# WeilBoundaryIdentification

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9b4ce5eec3cfd9166fa3703f6af23fa06c7967395fc0cc6baa23aa7057a368e",
  "kind": "structure",
  "lexical_name": "WeilBoundaryIdentification",
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
  "slug": "weilboundaryidentification--6a9fcb127e0fb2de7a2423a5",
  "source": {
    "blob": "6488948bcfdf19ef458d7b7dd763e7ef6f3222a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeilCorrespondence/Variant3a603cfcef2842a1504516985019eeac2e5e17dd29021789278f1845909bf094.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a9fcb127e0fb2de7a2423a5fee9f1516b76ab3751a0a07ca580b6982e56132f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeilCorrespondence/Variant3a603cfcef2842a1504516985019eeac2e5e17dd29021789278f1845909bf094.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9b4ce5eec3cfd9166fa3703f6af23fa06c7967395fc0cc6baa23aa7057a368e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WeilBoundaryIdentification
    (Prime : Type uPrime)
    [DecidableEq Prime]
    (Test : Type uTest) where
  arithmetic :
    SemiLocalArithmeticTail Prime Test
  operator :
    SemiLocalOperatorBridge Prime Test
  truncatedSidesAgree :
    ∀ cut test,
      arithmetic.truncatedWeil cut test =
        operator.truncatedArithmetic cut test
  exactDecomposition :
    ∀ cut test,
      arithmetic.globalWeil test =
        operator.packetEnergy cut test +
          arithmetic.tail cut test +
          operator.residual cut test
  localGlobalCompatibility : Prop
  localGlobalCompatibilityProof :
    localGlobalCompatibility

end Mathematics.SemiLocalDefect.Trace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeilCorrespondence/Variant3a603cfcef2842a1504516985019eeac2e5e17dd29021789278f1845909bf094.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeilCorrespondence/Variant3a603cfcef2842a1504516985019eeac2e5e17dd29021789278f1845909bf094.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6488948bcfdf19ef458d7b7dd763e7ef6f3222a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
