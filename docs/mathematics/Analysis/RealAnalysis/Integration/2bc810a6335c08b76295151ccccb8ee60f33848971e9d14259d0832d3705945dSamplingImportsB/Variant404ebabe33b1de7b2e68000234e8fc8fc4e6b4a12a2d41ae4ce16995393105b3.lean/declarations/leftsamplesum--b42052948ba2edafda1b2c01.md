# leftSampleSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89e047b1fa0402b62e617707b16ffac2037a4086b5469798b686c0b225b9526a",
  "kind": "def",
  "lexical_name": "leftSampleSum",
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
  "slug": "leftsamplesum--b42052948ba2edafda1b2c01",
  "source": {
    "blob": "107bb5f025179252f00f30a693a012509da15b15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 38,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant404ebabe33b1de7b2e68000234e8fc8fc4e6b4a12a2d41ae4ce16995393105b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b42052948ba2edafda1b2c01400622891cd35a705740567fa6629da9818c207e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant404ebabe33b1de7b2e68000234e8fc8fc4e6b4a12a2d41ae4ce16995393105b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89e047b1fa0402b62e617707b16ffac2037a4086b5469798b686c0b225b9526a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftSampleSum (g : ℝ → ℝ) (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 N, g k

/-- Exact one-interval integration-by-parts identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant404ebabe33b1de7b2e68000234e8fc8fc4e6b4a12a2d41ae4ce16995393105b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant404ebabe33b1de7b2e68000234e8fc8fc4e6b4a12a2d41ae4ce16995393105b3.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `107bb5f025179252f00f30a693a012509da15b15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
