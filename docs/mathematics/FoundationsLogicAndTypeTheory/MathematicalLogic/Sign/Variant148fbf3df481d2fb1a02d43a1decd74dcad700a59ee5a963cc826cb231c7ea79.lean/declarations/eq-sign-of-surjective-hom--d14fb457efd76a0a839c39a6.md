# eq_sign_of_surjective_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4dc3c2703d805168a0b8fb8791b69f61096c532",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 439,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae0a3915-f105-ccda-8604-65dd0bb58bff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df40a7ad-f09a-84c8-d2cf-888963be2c48",
  "kind": "theorem",
  "lexical_name": "eq_sign_of_surjective_hom",
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
  "slug": "eq-sign-of-surjective-hom--d14fb457efd76a0a839c39a6",
  "source": {
    "blob": "a4dc3c2703d805168a0b8fb8791b69f61096c532",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 439,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d14fb457efd76a0a839c39a64ace2756ddac5d985e4f41cd22408477b81d1ad5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df40a7ad-f09a-84c8-d2cf-888963be2c48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_sign_of_surjective_hom {s : Perm α →* ℤˣ} (hs : Surjective s) : s = sign :=
  have : ∀ {f}, IsSwap f → s f = -1 := fun {f} ⟨x, y, hxy, hxy'⟩ =>
    hxy'.symm ▸
      by_contradiction fun h => by
        have : ∀ f, IsSwap f → s f = 1 := fun f ⟨a, b, hab, hab'⟩ => by
          rw [← isConj_iff_eq, ← Or.resolve_right (Int.units_eq_one_or _) h, hab']
          exact s.map_isConj (isConj_swap hab hxy)
        let ⟨g, hg⟩ := hs (-1)
        let ⟨l, hl⟩ := (truncSwapFactors g).out
        have : ∀ a ∈ l.map s, a = (1 : ℤˣ) := fun a ha =>
          let ⟨g, hg⟩ := List.mem_map.1 ha
          hg.2 ▸ this _ (hl.2 _ hg.1)
        have : s l.prod = 1 := by
          rw [← l.prod_hom s, List.eq_replicate_length.2 this, List.prod_replicate, one_pow]
        rw [hl.1, hg] at this
        exact absurd this (by simp_all)
  MonoidHom.ext fun f => by
    let ⟨l, hl₁, hl₂⟩ := (truncSwapFactors f).out
    have hsl : ∀ a ∈ l.map s, a = (-1 : ℤˣ) := fun a ha =>
      let ⟨g, hg⟩ := List.mem_map.1 ha
      hg.2 ▸ this (hl₂ _ hg.1)
    rw [← hl₁, ← l.prod_hom s, List.eq_replicate_length.2 hsl, List.length_map, List.prod_replicate,
      sign_prod_list_swap hl₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4dc3c2703d805168a0b8fb8791b69f61096c532` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
