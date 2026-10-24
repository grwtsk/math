# gauge_smul_left_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b795f7ac-1b64-0b11-b59e-cd47dc963dd9",
  "kind": "theorem",
  "lexical_name": "gauge_smul_left_of_nonneg",
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
  "slug": "gauge-smul-left-of-nonneg--165316df58fe0ce0fc595a03",
  "source": {
    "blob": "f2adfaaa314239c42376b77fbb198c381a8e6b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 269,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Gauge/Varianta093d03f55ea6f2949e57d8827720e9eb59ef3131a1254b02de20ebca4fa633c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:165316df58fe0ce0fc595a033b0c22f69d826947f3e1e829b9a8486e487bab7e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Gauge/Varianta093d03f55ea6f2949e57d8827720e9eb59ef3131a1254b02de20ebca4fa633c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b795f7ac-1b64-0b11-b59e-cd47dc963dd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gauge_smul_left_of_nonneg [MulActionWithZero α E] [SMulCommClass α ℝ ℝ]
    [IsScalarTower α ℝ ℝ] [IsScalarTower α ℝ E] {s : Set E} {a : α} (ha : 0 ≤ a) :
    gauge (a • s) = a⁻¹ • gauge s := by
  obtain rfl | ha' := ha.eq_or_lt
  · rw [inv_zero, zero_smul, gauge_of_subset_zero (zero_smul_set_subset _)]
  ext x
  rw [gauge_def', Pi.smul_apply, gauge_def', ← Real.sInf_smul_of_nonneg (inv_nonneg.2 ha)]
  congr 1
  ext r
  simp_rw [Set.mem_smul_set, Set.mem_sep_iff]
  constructor
  · rintro ⟨hr, y, hy, h⟩
    simp_rw [mem_Ioi] at hr ⊢
    refine ⟨a • r, ⟨smul_pos ha' hr, ?_⟩, inv_smul_smul₀ ha'.ne' _⟩
    rwa [smul_inv₀, smul_assoc, ← h, inv_smul_smul₀ ha'.ne']
  · rintro ⟨r, ⟨hr, hx⟩, rfl⟩
    rw [mem_Ioi] at hr ⊢
    refine ⟨smul_pos (inv_pos.2 ha') hr, r⁻¹ • x, hx, ?_⟩
    rw [smul_inv₀, smul_assoc, inv_inv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Gauge/Varianta093d03f55ea6f2949e57d8827720e9eb59ef3131a1254b02de20ebca4fa633c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Gauge/Varianta093d03f55ea6f2949e57d8827720e9eb59ef3131a1254b02de20ebca4fa633c.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2adfaaa314239c42376b77fbb198c381a8e6b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
