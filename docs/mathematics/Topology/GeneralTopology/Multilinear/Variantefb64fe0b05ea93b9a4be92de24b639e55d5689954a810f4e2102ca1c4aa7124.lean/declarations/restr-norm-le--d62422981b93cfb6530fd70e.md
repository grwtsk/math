# restr_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:645b6143-f146-a93d-5d86-09b917767588",
  "kind": "theorem",
  "lexical_name": "restr_norm_le",
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
  "slug": "restr-norm-le--d62422981b93cfb6530fd70e",
  "source": {
    "blob": "eb7d6a77e37c67ebd04eb70781e0d39590c8ab69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 277,
    "path": "GRWTSK/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d62422981b93cfb6530fd70efba88be014067b72e2e940864bc416795e70204d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:645b6143-f146-a93d-5d86-09b917767588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restr_norm_le {k n : ℕ} (f : (MultilinearMap 𝕜 (fun _ : Fin n => G) G' : _))
    (s : Finset (Fin n)) (hk : s.card = k) (z : G) {C : ℝ} (H : ∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖)
    (v : Fin k → G) : ‖f.restr s hk z v‖ ≤ C * ‖z‖ ^ (n - k) * ∏ i, ‖v i‖ := by
  rw [mul_right_comm, mul_assoc]
  convert H _ using 2
  simp only [apply_dite norm, Fintype.prod_dite, prod_const ‖z‖, Finset.card_univ,
    Fintype.card_of_subtype sᶜ fun _ => mem_compl, card_compl, Fintype.card_fin, hk, mk_coe, ←
    (s.orderIsoOfFin hk).symm.bijective.prod_comp fun x => ‖v x‖]
  convert rfl
#align multilinear_map.restr_norm_le MultilinearMap.restr_norm_le

end MultilinearMap

/-!
### Continuous multilinear maps

We define the norm `‖f‖` of a continuous multilinear map `f` in finitely many variables as the
smallest number such that `‖f m‖ ≤ ‖f‖ * ∏ i, ‖m i‖` for all `m`. We show that this
defines a normed space structure on `ContinuousMultilinearMap 𝕜 E G`.
-/


namespace ContinuousMultilinearMap

variable (c : 𝕜) (f g : ContinuousMultilinearMap 𝕜 E G) (m : ∀ i, E i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb7d6a77e37c67ebd04eb70781e0d39590c8ab69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
