# induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7b961eb-18a2-dcb3-ecdb-e80d3565815b",
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
  "slug": "induction-on--fee50928c8cbaa61e23f0c44",
  "source": {
    "blob": "3eef3222ec34dea3ee0b0a0364ebb9196d46c20b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 251,
    "path": "GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fee50928c8cbaa61e23f0c4496cf1b5a2c447bdfcbdcfb1ff0fcee8cb58faec6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7b961eb-18a2-dcb3-ecdb-e80d3565815b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on {x y : A}
    (hy : y ∈ elemental R x) {P : (u : A) → u ∈ elemental R x → Prop}
    (self : P x (self_mem R x)) (star_self : P (star x) (star_self_mem R x))
    (algebraMap : ∀ r, P (algebraMap R A r) (algebraMap_mem _ r))
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

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eef3222ec34dea3ee0b0a0364ebb9196d46c20b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
