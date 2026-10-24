# source_exact_ninth_order_pole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5728614-7447-48f3-e060-901ac6714f02",
  "kind": "theorem",
  "lexical_name": "source_exact_ninth_order_pole",
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
  "slug": "source-exact-ninth-order-pole--84338a50b76dbf16a68876f8",
  "source": {
    "blob": "de06cc4b6a444d170fe5a20fa003acb92df90238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1171,
    "line": 1116,
    "path": "GRWTSK/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84338a50b76dbf16a68876f85d2a7b9aeb7ed25b8ba87635e2eb39da8f9505bc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5728614-7447-48f3-e060-901ac6714f02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1116–1171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_exact_ninth_order_pole
    (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    MeromorphicAt continuedTransform
        (2 * (p.val - 1 / 2)) ∧
      meromorphicOrderAt continuedTransform
        (2 * (p.val - 1 / 2)) = (-9 : ℤ) ∧
      AnalyticAt ℂ
        (sourcePatchedNumerator p) 0 ∧
      sourcePatchedNumerator p 0 =
        pointPairPrincipalCoefficient p ∧
      pointPairPrincipalCoefficient p ≠ 0 ∧
      (∀ᶠ w in 𝓝 (0 : ℂ),
        sourcePatchedNumerator p w ≠ 0) ∧
      (∀ᶠ w in 𝓝[≠] (0 : ℂ),
        continuedTransform
            (2 * (p.val - 1 / 2) + w) =
          sourcePatchedNumerator p w / w ^ 9) := by
  have hc :
      0 < (2 * (p.val - 1 / 2)).re := by
    simpa using
      mul_pos (by norm_num : (0 : ℝ) < 2) hp
  obtain ⟨hH, hH0, hunit, heq, horderLocal⟩ :=
    exact_pole_certificate
      (point_pair_principal_coefficient_ne_zero p)
      (continuedTransform_cleared_tendsto p hp)
      (continuedTransform_punctured_differentiable _ hc)
  have htranslate :
      meromorphicOrderAt
          (fun w ↦
            continuedTransform
              (2 * (p.val - 1 / 2) + w))
          0 =
        meromorphicOrderAt continuedTransform
          (2 * (p.val - 1 / 2)) := by
    simpa only [zero_add, add_comm] using
      (meromorphicOrderAt_fun_comp_add_const_eq_meromorphicOrderAt
        (f := continuedTransform)
        (x := (0 : ℂ))
        (c := 2 * (p.val - 1 / 2)))
  have horder :
      meromorphicOrderAt continuedTransform
          (2 * (p.val - 1 / 2)) =
        (-9 : ℤ) :=
    htranslate.symm.trans horderLocal
  have hmer :
      MeromorphicAt continuedTransform
        (2 * (p.val - 1 / 2)) :=
    meromorphicAt_of_meromorphicOrderAt_ne_zero
      (by rw [horder]; norm_num)
  exact ⟨hmer, horder, hH, hH0,
    point_pair_principal_coefficient_ne_zero p,
    hunit, heq⟩

/-- Exact local-pole checkpoint reached before global positive-half-plane
meromorphic assembly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean#L1116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de06cc4b6a444d170fe5a20fa003acb92df90238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
