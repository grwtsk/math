# cfcₙ_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfb9d38b-a257-dea9-4277-2e01c91ce976",
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
  "slug": "cfc-sum--f58f74cf2db0348e8d57cf1a",
  "source": {
    "blob": "ecbfcb91b48ba7065b11578de5927f78b4e8ba41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 368,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnital/Varianta69f47c05d00fec9f564b94c0bdf2f1bb07c8bdcba3afd3b00e0a64f0e6517af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f58f74cf2db0348e8d57cf1a2900aea93e2fe668d2de170709c342fd721c7321",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnital/Varianta69f47c05d00fec9f564b94c0bdf2f1bb07c8bdcba3afd3b00e0a64f0e6517af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfb9d38b-a257-dea9-4277-2e01c91ce976`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–384.

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

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnital/Varianta69f47c05d00fec9f564b94c0bdf2f1bb07c8bdcba3afd3b00e0a64f0e6517af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnital/Varianta69f47c05d00fec9f564b94c0bdf2f1bb07c8bdcba3afd3b00e0a64f0e6517af.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecbfcb91b48ba7065b11578de5927f78b4e8ba41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
