# norm_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd9ce2d4-2d2c-84fd-e7d4-eae4ac387ac3",
  "kind": "theorem",
  "lexical_name": "norm_eq_zero_iff",
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
  "slug": "norm-eq-zero-iff--2633f8d0cbd343d35bcca65d",
  "source": {
    "blob": "a059e9acb7fff69b51af64de315d65f32b67871d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 423,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2633f8d0cbd343d35bcca65de3c87c42677eb35d8d2e0f190cb93785faabce63",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd9ce2d4-2d2c-84fd-e7d4-eae4ac387ac3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_zero_iff {f : lp E p} : ‖f‖ = 0 ↔ f = 0 := by
  refine ⟨fun h => ?_, by rintro rfl; exact norm_zero⟩
  rcases p.trichotomy with (rfl | rfl | hp)
  · ext i
    have : { i : α | ¬f i = 0 } = ∅ := by simpa [lp.norm_eq_card_dsupport f] using h
    have : (¬f i = 0) = False := congr_fun this i
    tauto
  · rcases isEmpty_or_nonempty α with _i | _i
    · simp [eq_iff_true_of_subsingleton]
    have H : IsLUB (Set.range fun i => ‖f i‖) 0 := by simpa [h] using lp.isLUB_norm f
    ext i
    have : ‖f i‖ = 0 := le_antisymm (H.1 ⟨i, rfl⟩) (norm_nonneg _)
    simpa using this
  · have hf : HasSum (fun i : α => ‖f i‖ ^ p.toReal) 0 := by
      have := lp.hasSum_norm hp f
      rwa [h, Real.zero_rpow hp.ne'] at this
    have : ∀ i, 0 ≤ ‖f i‖ ^ p.toReal := fun i => Real.rpow_nonneg (norm_nonneg _) _
    rw [hasSum_zero_iff_of_nonneg this] at hf
    ext i
    have : f i = 0 ∧ p.toReal ≠ 0 := by
      simpa [Real.rpow_eq_zero_iff_of_nonneg (norm_nonneg (f i))] using congr_fun hf i
    exact this.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a059e9acb7fff69b51af64de315d65f32b67871d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
