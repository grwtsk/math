# verifiedArithmeticClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea9e63e3d7f9b91826d785c7552ab3e78a9de04710b0223dc4d066ab75f4641a",
  "kind": "def",
  "lexical_name": "verifiedArithmeticClaim",
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
  "slug": "verifiedarithmeticclaim--16f62044d44c87ec61f8dad2",
  "source": {
    "blob": "f1cee72955f7de1fde3b7fdc793eec5409b3c8b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant498db484675ecf52fa34065fa8cee422204b5f880bc3292d51f19a9ffa81c6e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16f62044d44c87ec61f8dad267224e3b44f66b2a03087fe1f5c45c56549ddace",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant498db484675ecf52fa34065fa8cee422204b5f880bc3292d51f19a9ffa81c6e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea9e63e3d7f9b91826d785c7552ab3e78a9de04710b0223dc4d066ab75f4641a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def verifiedArithmeticClaim : Claim where
  claimId := "CAP-EXAMPLE-VERIFIED"
  proposition := 2 + 2 = 4
  owner := .leanSemantics
  evidenceLocation := some "Surface/Surface/ContinuousAssurance/Examples.lean"
  status := .verified
  assumptions := []
  targetConclusion := 2 + 2 = 4
  targetMatches := rfl
  certificate := .verified (by decide)
  metadataCoherent := by
    simp [ClaimCertificate.MetadataCoherent,
      ClaimCertificate.RequiredAssumptions]

/-- The verified example's target is available as a theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant498db484675ecf52fa34065fa8cee422204b5f880bc3292d51f19a9ffa81c6e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant498db484675ecf52fa34065fa8cee422204b5f880bc3292d51f19a9ffa81c6e1.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1cee72955f7de1fde3b7fdc793eec5409b3c8b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
