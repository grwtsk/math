# setIntegral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1c926b9-8a64-4b55-dc6c-6ab49f102f1a",
  "kind": "theorem",
  "lexical_name": "setIntegral_eq",
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
  "slug": "setintegral-eq--897b073afcc639d61e5d98fd",
  "source": {
    "blob": "6d63790ce1c96239f0d230135a22798c75606ee3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 415,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variantbdeee045851a63a5a582be1182a0debe0969fef15af33ac5a9abff3f8f33312a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:897b073afcc639d61e5d98fd974e1ce85d49cfb1bb361244fb9f8fb88b744d5c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variantbdeee045851a63a5a582be1182a0debe0969fef15af33ac5a9abff3f8f33312a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1c926b9-8a64-4b55-dc6c-6ab49f102f1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem setIntegral_eq (hs : IsFundamentalDomain G s μ) (ht : IsFundamentalDomain G t μ)
    {f : α → E} (hf : ∀ (g : G) (x), f (g • x) = f x) : ∫ x in s, f x ∂μ = ∫ x in t, f x ∂μ := by
  by_cases hfs : IntegrableOn f s μ
  · have hft : IntegrableOn f t μ := by rwa [ht.integrableOn_iff hs hf]
    calc
      ∫ x in s, f x ∂μ = ∑' g : G, ∫ x in s ∩ g • t, f x ∂μ := ht.setIntegral_eq_tsum hfs
      _ = ∑' g : G, ∫ x in g • t ∩ s, f (g⁻¹ • x) ∂μ := by simp only [hf, inter_comm]
      _ = ∫ x in t, f x ∂μ := (hs.setIntegral_eq_tsum' hft).symm
  · rw [integral_undef hfs, integral_undef]
    rwa [hs.integrableOn_iff ht hf] at hfs

/-- If the action of a countable group `G` admits an invariant measure `μ` with a fundamental domain
`s`, then every null-measurable set `t` such that the sets `g • t ∩ s` are pairwise a.e.-disjoint
has measure at most `μ s`. -/
@[to_additive /-- If the additive action of a countable group `G` admits an invariant measure `μ`
  with a fundamental domain `s`, then every null-measurable set `t` such that the sets `g +ᵥ t ∩ s`
  are pairwise a.e.-disjoint has measure at most `μ s`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variantbdeee045851a63a5a582be1182a0debe0969fef15af33ac5a9abff3f8f33312a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variantbdeee045851a63a5a582be1182a0debe0969fef15af33ac5a9abff3f8f33312a.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d63790ce1c96239f0d230135a22798c75606ee3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
