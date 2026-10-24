# summable_of_locally_summable_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3df3ef5c-167b-26a3-b02c-6a46527bf748",
  "kind": "theorem",
  "lexical_name": "summable_of_locally_summable_norm",
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
  "slug": "summable-of-locally-summable-norm--be5e143df48deaf08fd923cc",
  "source": {
    "blob": "c478f756cbb46f1a6d18cec9f7eab18d92ee4c25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 407,
    "path": "GRWTSK/Topology/MetricTopology/Compact/Variant79fff397ad7d7f3ad966931f173b56fba12fc527945dbe5c1b00a58255713829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be5e143df48deaf08fd923ccd5e7d069aeebf368180b92fd69cd983b80350ade",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Compact/Variant79fff397ad7d7f3ad966931f173b56fba12fc527945dbe5c1b00a58255713829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3df3ef5c-167b-26a3-b02c-6a46527bf748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_of_locally_summable_norm {ι : Type*} {F : ι → C(X, E)}
    (hF : ∀ K : Compacts X, Summable fun i => ‖(F i).restrict K‖) : Summable F := by
  classical
  refine (ContinuousMap.exists_tendsto_compactOpen_iff_forall _).2 fun K hK => ?_
  lift K to Compacts X using hK
  have A : ∀ s : Finset ι, restrict K (∑ i ∈ s, F i) = ∑ i ∈ s, restrict K (F i) := by
    intro s
    ext1 x
    -- TODO: there is a non-confluence problem in the lemmas here,
    -- and `SetLike.coe_sort_coe` prevents `restrict_apply` from being used.
    simp [-SetLike.coe_sort_coe]
  simpa only [HasSum, A] using (hF K).of_norm

end LocalNormalConvergence

/-!
### Star structures

In this section, if `β` is a normed ⋆-group, then so is the space of
continuous functions from `α` to `β`, by using the star operation pointwise.

Furthermore, if `α` is compact and `β` is a C⋆-ring, then `C(α, β)` is a C⋆-ring. -/


section NormedSpace

variable {α : Type*} {β : Type*}
variable [TopologicalSpace α] [SeminormedAddCommGroup β] [StarAddMonoid β] [NormedStarGroup β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Compact/Variant79fff397ad7d7f3ad966931f173b56fba12fc527945dbe5c1b00a58255713829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Compact/Variant79fff397ad7d7f3ad966931f173b56fba12fc527945dbe5c1b00a58255713829.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c478f756cbb46f1a6d18cec9f7eab18d92ee4c25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
