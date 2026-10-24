# multiplicativeCoverSurface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b027ddfd931ada57c6b895ab1a07d79989b841bad961a1f379adaf28a4f77e85",
  "kind": "def",
  "lexical_name": "multiplicativeCoverSurface",
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
  "slug": "multiplicativecoversurface--ea8bd1475cb440942b28fe2a",
  "source": {
    "blob": "5c6503ecabe2a720a1d0b848d8b8488ee1cbff2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpinDivisibilityCover/Variantfded462cfe57f6d386ae8a09dfcf7a6db7e91ee98d1557afc31e24f51ae0ae03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea8bd1475cb440942b28fe2a17ecabfea00b552f2defa1acccdc1028d5e7430b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpinDivisibilityCover/Variantfded462cfe57f6d386ae8a09dfcf7a6db7e91ee98d1557afc31e24f51ae0ae03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b027ddfd931ada57c6b895ab1a07d79989b841bad961a1f379adaf28a4f77e85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def multiplicativeCoverSurface (cover : CyclicSpinCover) (flips : Nat) :
    MultiplicativeCoverSurface :=
  { divisor := cover.modulus
    flips := flips
    residue := residueAfterFlips cover flips
    closes := closesAfter cover flips
    completeCovers := completeCoverCount cover flips
    fundamentalPeriod := fundamentalFlipCount cover
    halfPoleLiftCount := (halfPoleLiftNumerators cover.modulus).length
    newPrimalityTheoremClaim := false }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpinDivisibilityCover/Variantfded462cfe57f6d386ae8a09dfcf7a6db7e91ee98d1557afc31e24f51ae0ae03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpinDivisibilityCover/Variantfded462cfe57f6d386ae8a09dfcf7a6db7e91ee98d1557afc31e24f51ae0ae03.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c6503ecabe2a720a1d0b848d8b8488ee1cbff2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
