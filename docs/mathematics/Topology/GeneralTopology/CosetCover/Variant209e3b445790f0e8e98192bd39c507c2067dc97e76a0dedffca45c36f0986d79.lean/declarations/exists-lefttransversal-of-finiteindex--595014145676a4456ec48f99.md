# exists_leftTransversal_of_FiniteIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb63f1e0-e69a-01b5-c90c-ce65122a2b33",
  "kind": "theorem",
  "lexical_name": "exists_leftTransversal_of_FiniteIndex",
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
  "slug": "exists-lefttransversal-of-finiteindex--595014145676a4456ec48f99",
  "source": {
    "blob": "4d2917ad3588fee91d80d42fe37d606a4695f80b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:595014145676a4456ec48f99d3849a64647a27998ef025aad8e7dc32c0eff14d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb63f1e0-e69a-01b5-c90c-ce65122a2b33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_leftTransversal_of_FiniteIndex
    {D H : Subgroup G} [D.FiniteIndex] (hD_le_H : D ≤ H) :
    ∃ t : Finset H,
      IsComplement (t : Set H) (D.subgroupOf H) ∧
        ⋃ g ∈ t, (g : G) • (D : Set G) = H := by
  have ⟨t, ht⟩ := (D.subgroupOf H).exists_isComplement_left 1
  have hf : t.Finite := ht.1.finite_left_iff.mpr inferInstance
  refine ⟨hf.toFinset, hf.coe_toFinset.symm ▸ ht.1, ?_⟩
  ext x
  suffices (∃ y ∈ t, ∃ d ∈ D, y * d = x) ↔ x ∈ H by simpa using this
  constructor
  · rintro ⟨⟨y, hy⟩, -, d, h, rfl⟩
    exact H.mul_mem hy (hD_le_H h)
  · intro hx
    exact ⟨_, (ht.1.toLeftFun ⟨x, hx⟩).2, _,
      ht.1.inv_toLeftFun_mul_mem ⟨x, hx⟩, mul_inv_cancel_left _ _⟩

variable {ι : Type*} {s : Finset ι} {H : Subgroup G} {g : ι → G}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d2917ad3588fee91d80d42fe37d606a4695f80b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
