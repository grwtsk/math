# atomise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04e49b6964cf7c54a1c3c599cea890197435280c07c4879d87757c0faa2eb030",
  "kind": "def",
  "lexical_name": "atomise",
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
  "slug": "atomise--14bbc8d20a56efac7b5a5a10",
  "source": {
    "blob": "ee3c052893d72f68cd449b7b22d45a9405067a1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 931,
    "line": 900,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant8d57609d7899b4c25d8b4aae7cd893cfa7d689b10bb18ca48ac0e6be4ea2dd9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14bbc8d20a56efac7b5a5a10b0bacfbfd54f5ab8439354abef65fad53ad73266",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant8d57609d7899b4c25d8b4aae7cd893cfa7d689b10bb18ca48ac0e6be4ea2dd9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04e49b6964cf7c54a1c3c599cea890197435280c07c4879d87757c0faa2eb030`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 900–931.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def atomise (s : Finset α) (F : Finset (Finset α)) : Finpartition s :=
  ofErase (F.powerset.image fun Q ↦ {i ∈ s | ∀ t ∈ F, t ∈ Q ↔ i ∈ t})
    (Set.PairwiseDisjoint.supIndep fun x hx y hy h ↦
      disjoint_left.mpr fun z hz1 hz2 ↦
        h (by
            rw [mem_coe, mem_image] at hx hy
            obtain ⟨Q, hQ, rfl⟩ := hx
            obtain ⟨R, hR, rfl⟩ := hy
            suffices h' : Q = R by
              subst h'
              exact of_eq_true (eq_self {i ∈ s | ∀ t ∈ F, t ∈ Q ↔ i ∈ t})
            rw [id, mem_filter] at hz1 hz2
            rw [mem_powerset] at hQ hR
            ext i
            refine ⟨fun hi ↦ ?_, fun hi ↦ ?_⟩
            · rwa [hz2.2 _ (hQ hi), ← hz1.2 _ (hQ hi)]
            · rwa [hz1.2 _ (hR hi), ← hz2.2 _ (hR hi)]))
    (by
      refine (Finset.sup_le fun t ht ↦ ?_).antisymm fun a ha ↦ ?_
      · rw [mem_image] at ht
        obtain ⟨A, _, rfl⟩ := ht
        exact s.filter_subset _
      · rw [mem_sup]
        refine
          ⟨{i ∈ s | ∀ t ∈ F, t ∈ {u ∈ F | a ∈ u} ↔ i ∈ t},
            mem_image_of_mem _ (mem_powerset.2 <| filter_subset _ _),
            mem_filter.2 ⟨ha, fun t ht ↦ ?_⟩⟩
        rw [mem_filter]
        exact and_iff_right ht)

variable {F : Finset (Finset α)}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant8d57609d7899b4c25d8b4aae7cd893cfa7d689b10bb18ca48ac0e6be4ea2dd9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant8d57609d7899b4c25d8b4aae7cd893cfa7d689b10bb18ca48ac0e6be4ea2dd9d.lean#L900).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee3c052893d72f68cd449b7b22d45a9405067a1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
