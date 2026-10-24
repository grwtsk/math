# CoeffFamily.Hyps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3d82c23f4f2504c3b3b795108dc9b5afd026676c4f3bd9a7fd46c1eab33e32d",
  "kind": "structure",
  "lexical_name": "CoeffFamily.Hyps",
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
  "slug": "coefffamily-hyps--0cf7457fbc4ea6b6a2383b6f",
  "source": {
    "blob": "58ea6529763ece5155f34750beea02c85c5f784c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 166,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cf7457fbc4ea6b6a2383b6f6e0e6211b2e516df368774befd84a008dfc9d188",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3d82c23f4f2504c3b3b795108dc9b5afd026676c4f3bd9a7fd46c1eab33e32d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CoeffFamily.Hyps (F : CoeffFamily) : Prop where
  /-- c₁ = 0: the N = 1 frequency log 1 = 0 does not oscillate (its 𝓜[μ,P_c] term would be of size
  T·l·L·‖c 1‖); true for C(1;Λ⋆) = 0. -/
  c_one : ∀ T : ℝ, F.c T 1 = 0
  H1 : ∃ C T₀ : ℝ, ∀ T : ℝ, T₀ ≤ T → ∀ x : ℝ, 2 ≤ x → x ≤ Real.exp (l T) →
    (∑ N ∈ Finset.Ioc 0 ⌊x⌋₊, ‖F.c T N‖ / Real.sqrt N) ≤ C * Real.sqrt x * l T
  H2 : ∃ C T₀ : ℝ, ∀ T : ℝ, T₀ ≤ T → ∀ x : ℝ, 2 ≤ x → x ≤ Real.exp (l T) →
    (∑ N ∈ Finset.Ioc 0 ⌊x⌋₊, ‖F.c T N‖ ^ 2) ≤ C * x * l T ^ 2
  H3 : ∀ ε : ℝ, 0 < ε → ∃ T₀ : ℝ, ∀ T : ℝ, T₀ ≤ T → ∀ y : ℝ, 0 ≤ y → y ≤ l T →
    |(∑ N ∈ Finset.Ioc 0 ⌊Real.exp y⌋₊, ‖F.c T N‖ ^ 2 / N) - l T ^ 2 * ∫ s in (0:ℝ)..(y / l T), F.D s|
      ≤ ε * l T ^ 2
  /-- D is continuous on ℝ (the Abel step differentiates y ↦ l²∫₀^{y/l} D
  two-sidedly at every y ∈ [0, L], including y = 0; D₁ is entire so this costs the producer nothing). -/
  D_cont : Continuous F.D
  D_nonneg : ∀ s ∈ Icc (0:ℝ) 1, 0 ≤ F.D s

/-- the ξ′ coefficient family: b_N^{(T)} := C(N; L_T), L_T = ½l + iπ/4, density D₁  [XF′ §6–7]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ea6529763ece5155f34750beea02c85c5f784c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
