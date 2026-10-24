# cfcₙ_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6488e8af4bb20e2115bde831a4265d2e61157d2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 360,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e691f54-820b-f0df-94de-b054b8c0143e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:484c91d0-6980-9fee-0408-1074466a82d5",
  "kind": "lemma",
  "lexical_name": "cfcₙ_sum",
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
  "slug": "cfc-sum--5b7f99074aa0fc5501f6b3dd",
  "source": {
    "blob": "6488e8af4bb20e2115bde831a4265d2e61157d2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 360,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b7f99074aa0fc5501f6b3dddf10d8393e7da8c2d681a0c793a59671cb742ef1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:484c91d0-6980-9fee-0408-1074466a82d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙ_sum {ι : Type*} (f : ι → R → R) (a : A) (s : Finset ι)
    (hf : ∀ i ∈ s, ContinuousOn (f i) (σₙ R a) := by cfc_cont_tac)
    (hf0 : ∀ i ∈ s, f i 0 = 0 := by cfc_zero_tac) :
    cfcₙ (∑ i ∈ s, f i) a = ∑ i ∈ s, cfcₙ (f i) a := by
  by_cases ha : p a
  · have hsum : s.sum f = fun z => ∑ i ∈ s, f i z := by ext; simp
    have hf' : ContinuousOn (∑ i : s, f i) (σₙ R a) := by
      rw [sum_coe_sort s, hsum]
      exact continuousOn_finset_sum s fun i hi => hf i hi
    rw [← sum_coe_sort s, ← sum_coe_sort s]
    rw [cfcₙ_apply_pi _ a _ (fun ⟨i, hi⟩ => hf i hi), ← map_sum, cfcₙ_apply _ a hf']
    congr 1
    ext
    simp
  · simp [cfcₙ_apply_of_not_predicate a ha]

open Finset in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6488e8af4bb20e2115bde831a4265d2e61157d2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
