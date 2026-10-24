# parityHalfIndexSignedQuarticWrap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1382c201251a9f2b341a9b8d16af4321a635cbe0c83064b37e3e36ca93155d82",
  "kind": "def",
  "lexical_name": "parityHalfIndexSignedQuarticWrap",
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
  "slug": "parityhalfindexsignedquarticwrap--8d561a6eebc59348c109b36c",
  "source": {
    "blob": "7b2e4f10da6183c56b097c080f4b4519b3d912f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 47,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d561a6eebc59348c109b36c909eebff6d31482e3bf6556d5a22af84073c63b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1382c201251a9f2b341a9b8d16af4321a635cbe0c83064b37e3e36ca93155d82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parityHalfIndexSignedQuarticWrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  4 * ∑ h ∈ H,
    ∑ g ∈ H,
      ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
        ∑ n ∈ zeroWindingHalfIndexBaseSet b r g,
          if halfIndexZeroWindingCoordinate m h ≡
                halfIndexZeroWindingCoordinate n g [MOD d * d] ∧
              halfIndexZeroWindingCoordinate m h ≠
                halfIndexZeroWindingCoordinate n g then
            halfIndexQuarticMobiusCoefficient r m h n g
          else 0

/-- Exact reindex of the original wrap collision surface into half-index
coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b2e4f10da6183c56b097c080f4b4519b3d912f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
