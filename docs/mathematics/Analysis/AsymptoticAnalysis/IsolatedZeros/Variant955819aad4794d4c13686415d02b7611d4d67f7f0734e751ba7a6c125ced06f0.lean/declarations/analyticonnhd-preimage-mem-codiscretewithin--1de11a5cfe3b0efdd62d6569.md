# AnalyticOnNhd.preimage_mem_codiscreteWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af4f754a-38d6-6b8e-7d1a-3dfd1ec6dbcc",
  "kind": "theorem",
  "lexical_name": "AnalyticOnNhd.preimage_mem_codiscreteWithin",
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
  "slug": "analyticonnhd-preimage-mem-codiscretewithin--1de11a5cfe3b0efdd62d6569",
  "source": {
    "blob": "d16050821aedfcb0aae8d954d325f0233bd19f99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 353,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1de11a5cfe3b0efdd62d65691f70e9cb4bd5f66cf014778e151d8d50ab13c9b7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af4f754a-38d6-6b8e-7d1a-3dfd1ec6dbcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticOnNhd.preimage_mem_codiscreteWithin {U : Set 𝕜} {s : Set E} {f : 𝕜 → E}
    (hfU : AnalyticOnNhd 𝕜 f U) (h₂f : ∀ x ∈ U, ¬EventuallyConst f (𝓝 x))
    (hs : s ∈ codiscreteWithin (f '' U)) :
    f ⁻¹' s ∈ codiscreteWithin U := by
  simp_rw [mem_codiscreteWithin, disjoint_principal_right, Set.compl_diff] at *
  intro x hx
  apply mem_of_superset ((hfU x hx).preimage_of_nhdsNE (h₂f x hx) (hs (f x) (by tauto)))
  rw [preimage_union, preimage_compl]
  apply union_subset_union_right (f ⁻¹' s)
  intro x hx
  simp only [mem_compl_iff, mem_preimage, mem_image, not_exists, not_and] at hx ⊢
  tauto

/-- Preimages of codiscrete sets, filter version: if `f` is analytic on a neighbourhood of `U` and
not locally constant, then the push-forward of the filter of sets codiscrete within `U` is less
than or equal to the filter of sets codiscrete within `f '' U`.

Applications might want to use the theorem `Filter.codiscreteWithin.mono`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d16050821aedfcb0aae8d954d325f0233bd19f99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
