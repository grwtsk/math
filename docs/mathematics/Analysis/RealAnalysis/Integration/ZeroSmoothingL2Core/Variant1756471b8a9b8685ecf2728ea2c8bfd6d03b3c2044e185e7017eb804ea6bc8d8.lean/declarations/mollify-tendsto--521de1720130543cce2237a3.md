# mollify_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fbc8e02-5088-e596-cf11-87b27df7e747",
  "kind": "theorem",
  "lexical_name": "mollify_tendsto",
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
  "slug": "mollify-tendsto--521de1720130543cce2237a3",
  "source": {
    "blob": "0316bc59527c558497290a85c6f705686fcfb542",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 126,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:521de1720130543cce2237a308941f68899a9632632035e8f17f8cb6aa251810",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fbc8e02-5088-e596-cf11-87b27df7e747`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mollify_tendsto {ι : Type*} {l : Filter ι} {f : ℝ → ℝ} (hf : Continuous f)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) (x : ℝ) :
    Tendsto (fun i ↦ mollify f (ε i) (hε i) x) l (𝓝 (f x)) :=
  ContDiffBump.convolution_tendsto_right_of_continuous
    (φ := fun i ↦ smoothingBump (ε i) (hε i)) hlim hf x

/-- On the full real line, the genuine L² error squares tend to zero.
The countably generated filter includes the source limit through positive real radii. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0316bc59527c558497290a85c6f705686fcfb542` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
