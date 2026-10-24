# exists_submodule_subset_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9a8765c-0839-19e5-019a-f503e0bda912",
  "kind": "lemma",
  "lexical_name": "exists_submodule_subset_card_le",
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
  "slug": "exists-submodule-subset-card-le--01a560ae566040e42ee9fa48",
  "source": {
    "blob": "621c1839659f897b266be27ff683c198250bb426",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 140,
    "path": "GRWTSK/Algebra/LinearAlgebra/ZMod/Variant18d2a972c326eebda9bc67d08f5fbad27248443c29423b058e6d8c95e2559b0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01a560ae566040e42ee9fa4881649bb4d562ef88a78748cbb3a0d6ddd60d3f36",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ZMod/Variant18d2a972c326eebda9bc67d08f5fbad27248443c29423b058e6d8c95e2559b0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9a8765c-0839-19e5-019a-f503e0bda912`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_submodule_subset_card_le (hp : p.Prime) [Module (ZMod p) G]
    (H : Submodule (ZMod p) G) {k : ℕ} (hk : k ≤ Nat.card H) (h'k : k ≠ 0) :
    ∃ H' : Submodule (ZMod p) G, Nat.card H' ≤ k ∧ k < p * Nat.card H' ∧ H' ≤ H := by
  obtain ⟨H'm, H'mHm, H'mk, kH'm⟩ := Sylow.exists_subgroup_le_card_le
    (H := AddSubgroup.toSubgroup ((AddSubgroup.toZModSubmodule _).symm H)) hp
      isPGroup_multiplicative hk h'k
  exact ⟨AddSubgroup.toZModSubmodule _ (AddSubgroup.toSubgroup.symm H'm), H'mk, kH'm, H'mHm⟩

end ZModModule
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ZMod/Variant18d2a972c326eebda9bc67d08f5fbad27248443c29423b058e6d8c95e2559b0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ZMod/Variant18d2a972c326eebda9bc67d08f5fbad27248443c29423b058e6d8c95e2559b0b.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `621c1839659f897b266be27ff683c198250bb426` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
