# norm_iteratedFDerivWithin_clm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0fd5883-1890-05e9-bd88-ebf4ecd8ed61",
  "kind": "theorem",
  "lexical_name": "norm_iteratedFDerivWithin_clm_apply",
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
  "slug": "norm-iteratedfderivwithin-clm-apply--a13a8c3d76ced85014ceef3d",
  "source": {
    "blob": "a503d47c2335fc0583a9aa26d256e96bedf21182",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 530,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variant4390d6f4625236d380ed182a2312fdf415d0ed2b6bae8b48bdd998a457c0df26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a13a8c3d76ced85014ceef3da03492f0321cfb4d5b9431e8cfec9c8b1ccbd01b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bounds/Variant4390d6f4625236d380ed182a2312fdf415d0ed2b6bae8b48bdd998a457c0df26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0fd5883-1890-05e9-bd88-ebf4ecd8ed61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 530–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_iteratedFDerivWithin_clm_apply {f : E → F →L[𝕜] G} {g : E → F} {s : Set E} {x : E}
    {N : ℕ∞ω} {n : ℕ} (hf : ContDiffOn 𝕜 N f s) (hg : ContDiffOn 𝕜 N g s)
    (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ s) (hn : n ≤ N) :
    ‖iteratedFDerivWithin 𝕜 n (fun y => (f y) (g y)) s x‖ ≤
      ∑ i ∈ Finset.range (n + 1), ↑(n.choose i) * ‖iteratedFDerivWithin 𝕜 i f s x‖ *
        ‖iteratedFDerivWithin 𝕜 (n - i) g s x‖ := by
  let B : (F →L[𝕜] G) →L[𝕜] F →L[𝕜] G := ContinuousLinearMap.flip (ContinuousLinearMap.apply 𝕜 G)
  have hB : ‖B‖ ≤ 1 := by
    simp only [B, ContinuousLinearMap.opNorm_flip, ContinuousLinearMap.apply]
    refine ContinuousLinearMap.opNorm_le_bound _ zero_le_one fun f => ?_
    simp only [ContinuousLinearMap.coe_id', id, one_mul]
    rfl
  exact B.norm_iteratedFDerivWithin_le_of_bilinear_of_le_one hf hg hs hx hn hB

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bounds/Variant4390d6f4625236d380ed182a2312fdf415d0ed2b6bae8b48bdd998a457c0df26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variant4390d6f4625236d380ed182a2312fdf415d0ed2b6bae8b48bdd998a457c0df26.lean#L530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a503d47c2335fc0583a9aa26d256e96bedf21182` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
