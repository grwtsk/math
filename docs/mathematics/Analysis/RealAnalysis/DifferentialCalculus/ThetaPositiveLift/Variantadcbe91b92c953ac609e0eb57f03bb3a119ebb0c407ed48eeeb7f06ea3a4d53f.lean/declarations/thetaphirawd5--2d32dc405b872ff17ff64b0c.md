# thetaPhiRawD5

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:789875ff91011d4c8f4e104bd60896c03f85b1ff359191d28c45112bc9ed7c1a",
  "kind": "def",
  "lexical_name": "thetaPhiRawD5",
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
  "slug": "thetaphirawd5--2d32dc405b872ff17ff64b0c",
  "source": {
    "blob": "adbc2ede8ef2d7592d4fc048758d0ec76f9457b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantadcbe91b92c953ac609e0eb57f03bb3a119ebb0c407ed48eeeb7f06ea3a4d53f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d32dc405b872ff17ff64b0c54d7336b0653a95bbd1771176d5edff92ea13028",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantadcbe91b92c953ac609e0eb57f03bb3a119ebb0c407ed48eeeb7f06ea3a4d53f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:789875ff91011d4c8f4e104bd60896c03f85b1ff359191d28c45112bc9ed7c1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaPhiRawD5 (t : ℝ) : ℝ :=
  -(9375 * Real.pi) * thetaGaussianSum 2 5 t +
  (285870 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
  (1008968 * Real.pi ^ 3) * thetaGaussianSum 6 13 t +
  (976320 * Real.pi ^ 4) * thetaGaussianSum 8 17 t -
  (343040 * Real.pi ^ 5) * thetaGaussianSum 10 21 t +
  (46592 * Real.pi ^ 6) * thetaGaussianSum 12 25 t -
  (2048 * Real.pi ^ 7) * thetaGaussianSum 14 29 t

/-- The sixth actual source derivative as a finite combination of Gaussian sums. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantadcbe91b92c953ac609e0eb57f03bb3a119ebb0c407ed48eeeb7f06ea3a4d53f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantadcbe91b92c953ac609e0eb57f03bb3a119ebb0c407ed48eeeb7f06ea3a4d53f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adbc2ede8ef2d7592d4fc048758d0ec76f9457b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
