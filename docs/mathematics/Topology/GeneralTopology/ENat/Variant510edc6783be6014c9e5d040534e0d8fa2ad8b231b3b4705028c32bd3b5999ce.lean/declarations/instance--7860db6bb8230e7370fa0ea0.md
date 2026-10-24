# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fcbe3044fb0c9445f39b46228de84e152205c37efc8bf808a8457b67437f713",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--7860db6bb8230e7370fa0ea0",
  "source": {
    "blob": "ae0ae35c52cb5506685b51bd15cd8e0684743f8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/ENat/Variant510edc6783be6014c9e5d040534e0d8fa2ad8b231b3b4705028c32bd3b5999ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7860db6bb8230e7370fa0ea0ace40bf5f88d0f4033890a1b826ba3478915f9f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ENat/Variant510edc6783be6014c9e5d040534e0d8fa2ad8b231b3b4705028c32bd3b5999ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fcbe3044fb0c9445f39b46228de84e152205c37efc8bf808a8457b67437f713`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ContinuousMul ℕ∞ where
  continuous_mul :=
    have key (a : ℕ∞) : ContinuousAt (· * ·).uncurry (a, ⊤) := by
      rcases eq_zero_or_pos a with rfl | ha
      · simp [ContinuousAt, nhds_prod_eq]
      · simp only [ContinuousAt, Function.uncurry, mul_top ha.ne']
        refine tendsto_nhds_top_mono continuousAt_snd ?_
        filter_upwards [continuousAt_fst (lt_mem_nhds ha)] with (x, y) (hx : 0 < x)
        exact ENat.self_le_mul_left _ hx.ne'
    continuous_iff_continuousAt.2 <| Prod.forall.2 fun
      | (a : ℕ∞), ⊤ => key a
      | ⊤, (b : ℕ∞) =>
        ((key b).comp_of_eq (continuous_swap.tendsto (⊤, b)) rfl).congr <|
          .of_forall fun _ ↦ mul_comm ..
      | (a : ℕ), (b : ℕ) => by
        simp [ContinuousAt, nhds_prod_eq, tendsto_pure_nhds]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ENat/Variant510edc6783be6014c9e5d040534e0d8fa2ad8b231b3b4705028c32bd3b5999ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ENat/Variant510edc6783be6014c9e5d040534e0d8fa2ad8b231b3b4705028c32bd3b5999ce.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae0ae35c52cb5506685b51bd15cd8e0684743f8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
