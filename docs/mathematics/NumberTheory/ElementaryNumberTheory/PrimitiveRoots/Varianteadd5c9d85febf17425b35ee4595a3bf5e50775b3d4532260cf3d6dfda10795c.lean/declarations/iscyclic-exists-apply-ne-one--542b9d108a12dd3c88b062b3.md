# IsCyclic.exists_apply_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e47b2e71-ddf3-4c5d-26d0-b060caf99922",
  "kind": "lemma",
  "lexical_name": "IsCyclic.exists_apply_ne_one",
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
  "slug": "iscyclic-exists-apply-ne-one--542b9d108a12dd3c88b062b3",
  "source": {
    "blob": "9ef59be2ed2adac4f4bf70ef4ce09e6425053ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 787,
    "line": 763,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:542b9d108a12dd3c88b062b346477f8d90fd5b3187994274a0a32f73ff70622f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e47b2e71-ddf3-4c5d-26d0-b060caf99922`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 763–787.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCyclic.exists_apply_ne_one {G G' : Type*} [Group G] [IsCyclic G] [Finite G]
    [CommGroup G'] (hG' : ∃ ζ : G', IsPrimitiveRoot ζ (Nat.card G)) ⦃a : G⦄ (ha : a ≠ 1) :
    ∃ φ : G →* G', φ a ≠ 1 := by
  let inst : Fintype G := Fintype.ofFinite _
  obtain ⟨ζ, hζ⟩ := hG'
  -- pick a generator `g` of `G`
  obtain ⟨g, hg⟩ := IsCyclic.exists_generator (α := G)
  have hζg : orderOf ζ ∣ orderOf g := by
    rw [← hζ.eq_orderOf, orderOf_eq_card_of_forall_mem_zpowers hg, Nat.card_eq_fintype_card]
  -- use the homomorphism `φ` given by `g ↦ ζ`
  let φ := monoidHomOfForallMemZpowers hg hζg
  have hφg : IsPrimitiveRoot (φ g) (Nat.card G) := by
    rwa [monoidHomOfForallMemZpowers_apply_gen hg hζg]
  use φ
  contrapose! ha
  specialize hg a
  rw [← mem_powers_iff_mem_zpowers, Submonoid.mem_powers_iff] at hg
  obtain ⟨k, hk⟩ := hg
  rw [← hk, map_pow] at ha
  obtain ⟨l, rfl⟩ := (hφg.pow_eq_one_iff_dvd k).mp ha
  rw [← hk, pow_mul, Nat.card_eq_fintype_card, pow_card_eq_one, one_pow]

/-- If `M` is a commutative group that contains a primitive `n`th root of unity
and `a : ZMod n` is nonzero, then there exists a group homomorphism `φ` from the
additive group `ZMod n` to the multiplicative group `Mˣ` such that `φ a ≠ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean#L763).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef59be2ed2adac4f4bf70ef4ce09e6425053ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
