# coordChangeL_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43745173-8c06-5fa4-438d-5486e5842b70",
  "kind": "theorem",
  "lexical_name": "coordChangeL_prod",
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
  "slug": "coordchangel-prod--a5f270450efb190a2b8d347c",
  "source": {
    "blob": "ead15c259e3ea348a46cd82dae737044b58f0e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 92,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5f270450efb190a2b8d347ca5fd513e33a064cc82465c265ef827c3759e1730",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43745173-8c06-5fa4-438d-5486e5842b70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordChangeL_prod [e₁.IsLinear 𝕜] [e₁'.IsLinear 𝕜] [e₂.IsLinear 𝕜] [e₂'.IsLinear 𝕜] ⦃b⦄
    (hb : b ∈ (e₁.prod e₂).baseSet ∩ (e₁'.prod e₂').baseSet) :
    ((e₁.prod e₂).coordChangeL 𝕜 (e₁'.prod e₂') b : F₁ × F₂ →L[𝕜] F₁ × F₂) =
      (e₁.coordChangeL 𝕜 e₁' b : F₁ →L[𝕜] F₁).prodMap (e₂.coordChangeL 𝕜 e₂' b) := by
  rw [ContinuousLinearMap.ext_iff, ContinuousLinearMap.coe_prodMap']
  rintro ⟨v₁, v₂⟩
  show
    (e₁.prod e₂).coordChangeL 𝕜 (e₁'.prod e₂') b (v₁, v₂) =
      (e₁.coordChangeL 𝕜 e₁' b v₁, e₂.coordChangeL 𝕜 e₂' b v₂)
  rw [e₁.coordChangeL_apply e₁', e₂.coordChangeL_apply e₂', (e₁.prod e₂).coordChangeL_apply']
  exacts [rfl, hb, ⟨hb.1.2, hb.2.2⟩, ⟨hb.1.1, hb.2.1⟩]

variable {e₁ e₂} [∀ x : B, TopologicalSpace (E₁ x)] [∀ x : B, TopologicalSpace (E₂ x)]
  [FiberBundle F₁ E₁] [FiberBundle F₂ E₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ead15c259e3ea348a46cd82dae737044b58f0e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
