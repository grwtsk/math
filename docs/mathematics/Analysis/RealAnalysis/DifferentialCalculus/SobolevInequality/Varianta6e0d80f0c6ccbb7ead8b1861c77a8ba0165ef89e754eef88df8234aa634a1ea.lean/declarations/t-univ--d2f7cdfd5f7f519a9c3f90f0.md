# T_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c9d0b64-5224-7235-eea1-df3dfedb8906",
  "kind": "lemma",
  "lexical_name": "T_univ",
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
  "slug": "t-univ--d2f7cdfd5f7f519a9c3f90f0",
  "source": {
    "blob": "359c21256d5d3db3bcee9bc271792a403e3f66a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2f7cdfd5f7f519a9c3f90f092e8987df9fd342355582612b97adcc001cb5447",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c9d0b64-5224-7235-eea1-df3dfedb8906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma T_univ [Fintype ι] [∀ i, SigmaFinite (μ i)] (f : (∀ i, A i) → ℝ≥0∞) (x : ∀ i, A i) :
    T μ p f univ x =
    ∫⁻ (x : ∀ i, A i), (f x ^ (1 - (#ι - 1 : ℝ) * p)
    * ∏ i : ι, (∫⁻ t : A i, f (update x i t) ∂(μ i)) ^ p) ∂(.pi μ) := by
  simp [T, lmarginal_singleton]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `359c21256d5d3db3bcee9bc271792a403e3f66a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
