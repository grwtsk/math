# analyticAt_iff_analytic_fun_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87b04869-7def-96b3-7fa7-be218723972e",
  "kind": "theorem",
  "lexical_name": "analyticAt_iff_analytic_fun_smul",
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
  "slug": "analyticat-iff-analytic-fun-smul--b38f1f0a31f8f25f5c2195f2",
  "source": {
    "blob": "018e193e9c6d472ce64971f3ba8eb903f7a77441",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1112,
    "line": 1098,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Constructions/Variant95d36ea3c76e7b22e558ba1dea8dadcc5e84285bbc2c2b3512f5837d7562b94e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b38f1f0a31f8f25f5c2195f2b6e45a73fa08affb24ecb25a5b5cda85aac51a8b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Constructions/Variant95d36ea3c76e7b22e558ba1dea8dadcc5e84285bbc2c2b3512f5837d7562b94e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87b04869-7def-96b3-7fa7-be218723972e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1098–1112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticAt_iff_analytic_fun_smul [Module 𝕝 F] [IsBoundedSMul 𝕝 F] [IsScalarTower 𝕜 𝕝 F]
    {f : E → 𝕝} {g : E → F} {z : E} (h₁f : AnalyticAt 𝕜 f z) (h₂f : f z ≠ 0) :
    AnalyticAt 𝕜 g z ↔ AnalyticAt 𝕜 (fun z ↦ f z • g z) z := by
  constructor
  · exact fun a ↦ h₁f.smul a
  · intro hprod
    rw [analyticAt_congr (g := (f⁻¹ • f) • g), smul_assoc]
    · exact (h₁f.inv h₂f).fun_smul hprod
    · filter_upwards [h₁f.continuousAt.preimage_mem_nhds (compl_singleton_mem_nhds_iff.2 h₂f)]
      intro y hy
      rw [Set.preimage_compl, Set.mem_compl_iff, Set.mem_preimage, Set.mem_singleton_iff] at hy
      simp [hy]

/-- A function is analytic at a point iff it is analytic after scalar
  multiplication with a non-vanishing analytic function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Constructions/Variant95d36ea3c76e7b22e558ba1dea8dadcc5e84285bbc2c2b3512f5837d7562b94e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Constructions/Variant95d36ea3c76e7b22e558ba1dea8dadcc5e84285bbc2c2b3512f5837d7562b94e.lean#L1098).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `018e193e9c6d472ce64971f3ba8eb903f7a77441` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
