# length_Ioc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f49583d-ab18-9b9e-7760-2a5a411496fa",
  "kind": "theorem",
  "lexical_name": "length_Ioc",
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
  "slug": "length-ioc--9a872cf1f16d12d76cca684f",
  "source": {
    "blob": "56028fa6106b368cbb7296b4a8a138d9c34b7966",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a872cf1f16d12d76cca684f9b53320941f03bbc23e25e57058cbcd174853d36",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f49583d-ab18-9b9e-7760-2a5a411496fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_Ioc (a b : ℝ) : f.length (Ioc a b) = ofReal (f b - f a) := by
  refine'
    le_antisymm (iInf_le_of_le a <| iInf₂_le b Subset.rfl)
      (le_iInf fun a' => le_iInf fun b' => le_iInf fun h => ENNReal.coe_le_coe.2 _)
  cases' le_or_lt b a with ab ab
  · rw [Real.toNNReal_of_nonpos (sub_nonpos.2 (f.mono ab))]
    apply zero_le
  cases' (Ioc_subset_Ioc_iff ab).1 h with h₁ h₂
  exact Real.toNNReal_le_toNNReal (sub_le_sub (f.mono h₁) (f.mono h₂))
#align stieltjes_function.length_Ioc StieltjesFunction.length_Ioc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56028fa6106b368cbb7296b4a8a138d9c34b7966` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
