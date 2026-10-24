# induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ebd3d261458b22283aca6c28f3d81a6a3ecac77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:340e3f3a-642b-9a79-28e6-0742bc34c60f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d32b6a1-a077-d53a-ee6b-0dfb71e05a64",
  "kind": "theorem",
  "lexical_name": "induction_on",
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
  "slug": "induction-on--fd4923d99cdb6e215ce6e1e8",
  "source": {
    "blob": "3ebd3d261458b22283aca6c28f3d81a6a3ecac77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 241,
    "path": "GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd4923d99cdb6e215ce6e1e8949e62549745dfcbe2b576825a90718728d1765e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d32b6a1-a077-d53a-ee6b-0dfb71e05a64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on {x y : A}
    (hy : y ∈ elemental R x) {P : (u : A) → u ∈ elemental R x → Prop}
    (self : P x (self_mem R x)) (star_self : P (star x) (star_self_mem R x))
    (algebraMap : ∀ r, P (algebraMap R A r) (_root_.algebraMap_mem _ r))
    (add : ∀ u hu v hv, P u hu → P v hv → P (u + v) (add_mem hu hv))
    (mul : ∀ u hu v hv, P u hu → P v hv → P (u * v) (mul_mem hu hv))
    (closure : ∀ s : Set A, (hs : s ⊆ elemental R x) → (∀ u, (hu : u ∈ s) →
      P u (hs hu)) → ∀ v, (hv : v ∈ closure s) → P v (closure_minimal hs (isClosed R x) hv)) :
    P y hy := by
  apply closure (adjoin R {x} : Set A) subset_closure (fun y hy ↦ ?_) y hy
  rw [SetLike.mem_coe, ← mem_toSubalgebra, adjoin_toSubalgebra] at hy
  induction hy using Algebra.adjoin_induction with
  | mem u hu =>
    obtain ((rfl : u = x) | (hu : star u = x)) := by simpa using hu
    · exact self
    · simp_rw [← hu, star_star] at star_self
      exact star_self
  | algebraMap r => exact algebraMap r
  | add u v hu_mem hv_mem hu hv =>
    exact add u (subset_closure hu_mem) v (subset_closure hv_mem) (hu hu_mem) (hv hv_mem)
  | mul u v hu_mem hv_mem hu hv =>
    exact mul u (subset_closure hu_mem) v (subset_closure hv_mem) (hu hu_mem) (hv hv_mem)

@[deprecated (since := "2024-11-05")]
alias _root_.elementalStarAlgebra.induction_on := induction_on

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ebd3d261458b22283aca6c28f3d81a6a3ecac77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
