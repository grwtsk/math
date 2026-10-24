# finset_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ebe5252-412c-8117-6e36-6c8046d0716a",
  "kind": "theorem",
  "lexical_name": "finset_sum",
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
  "slug": "finset-sum--b8e05e76eeaa6ae8e541133b",
  "source": {
    "blob": "a059e9acb7fff69b51af64de315d65f32b67871d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 234,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8e05e76eeaa6ae8e541133b7683321f8ef0453af10057cc4c68d10be3b6ae3b",
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

Occurrence: `result:9ebe5252-412c-8117-6e36-6c8046d0716a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finset_sum {ι} (s : Finset ι) {f : ι → ∀ i, E i} (hf : ∀ i ∈ s, Memℓp (f i) p) :
    Memℓp (fun a => ∑ i ∈ s, f i a) p := by
  haveI : DecidableEq ι := Classical.decEq _
  revert hf
  refine Finset.induction_on s ?_ ?_
  · simp only [zero_mem_ℓp', Finset.sum_empty, imp_true_iff]
  · intro i s his ih hf
    simp only [his, Finset.sum_insert, not_false_iff]
    exact (hf i (s.mem_insert_self i)).add (ih fun j hj => hf j (Finset.mem_insert_of_mem hj))

section IsBoundedSMul

variable [NormedRing 𝕜] [∀ i, Module 𝕜 (E i)] [∀ i, IsBoundedSMul 𝕜 (E i)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a059e9acb7fff69b51af64de315d65f32b67871d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
