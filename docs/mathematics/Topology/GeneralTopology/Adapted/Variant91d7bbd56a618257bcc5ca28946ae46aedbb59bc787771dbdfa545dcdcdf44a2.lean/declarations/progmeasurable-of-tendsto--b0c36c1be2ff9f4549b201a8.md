# progMeasurable_of_tendsto'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f74a9a19-50c7-f8c0-8cbe-7b76619035ca",
  "kind": "theorem",
  "lexical_name": "progMeasurable_of_tendsto'",
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
  "slug": "progmeasurable-of-tendsto--b0c36c1be2ff9f4549b201a8",
  "source": {
    "blob": "5742ca511fdf56398d41b15714e476b1e454d9e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 164,
    "path": "GRWTSK/Topology/GeneralTopology/Adapted/Variant91d7bbd56a618257bcc5ca28946ae46aedbb59bc787771dbdfa545dcdcdf44a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0c36c1be2ff9f4549b201a873f33f4598dde37cda2f6a83bafb2eb7036fc9c1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Adapted/Variant91d7bbd56a618257bcc5ca28946ae46aedbb59bc787771dbdfa545dcdcdf44a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f74a9a19-50c7-f8c0-8cbe-7b76619035ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem progMeasurable_of_tendsto' {γ} [MeasurableSpace ι] [PseudoMetrizableSpace β]
    (fltr : Filter γ) [fltr.NeBot] [fltr.IsCountablyGenerated] {U : γ → ι → Ω → β}
    (h : ∀ l, ProgMeasurable f (U l)) (h_tendsto : Tendsto U fltr (𝓝 u)) : ProgMeasurable f u := by
  intro i
  apply @stronglyMeasurable_of_tendsto (Set.Iic i × Ω) β γ
    (MeasurableSpace.prod _ (f i)) _ _ fltr _ _ _ _ fun l => h l i
  rw [tendsto_pi_nhds] at h_tendsto ⊢
  intro x
  specialize h_tendsto x.fst
  rw [tendsto_nhds] at h_tendsto ⊢
  exact fun s hs h_mem => h_tendsto {g | g x.snd ∈ s} (hs.preimage (continuous_apply x.snd)) h_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Adapted/Variant91d7bbd56a618257bcc5ca28946ae46aedbb59bc787771dbdfa545dcdcdf44a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Adapted/Variant91d7bbd56a618257bcc5ca28946ae46aedbb59bc787771dbdfa545dcdcdf44a2.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5742ca511fdf56398d41b15714e476b1e454d9e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
