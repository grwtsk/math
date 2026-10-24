# restr_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9ea4c907ee19bb86bfb8a13880dbb434356eeee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31268531-711b-1f30-0b5f-bff5fe1752d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b685448-912d-c0f3-d196-7e36e5ca3780",
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
  "slug": "restr-norm-le--a3deb081af687dd8886d2549",
  "source": {
    "blob": "c9ea4c907ee19bb86bfb8a13880dbb434356eeee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 269,
    "path": "GRWTSK/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3deb081af687dd8886d2549b83e92fc66d053093f51bc7cfc0e0e37db49147b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b685448-912d-c0f3-d196-7e36e5ca3780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–294.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9ea4c907ee19bb86bfb8a13880dbb434356eeee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
