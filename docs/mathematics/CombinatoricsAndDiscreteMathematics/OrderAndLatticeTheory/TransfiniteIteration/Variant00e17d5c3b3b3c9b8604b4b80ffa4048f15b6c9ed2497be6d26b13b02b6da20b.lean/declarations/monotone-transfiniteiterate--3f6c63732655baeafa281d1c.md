# monotone_transfiniteIterate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bec9d2b-5b44-deb5-f3ba-e3c348c6b59d",
  "kind": "lemma",
  "lexical_name": "monotone_transfiniteIterate",
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
  "slug": "monotone-transfiniteiterate--3f6c63732655baeafa281d1c",
  "source": {
    "blob": "d467968f47a379d41f6f046177968449c576a2ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f6c63732655baeafa281d1cb66902259fde291a471d8cb305e53c6ab0132b95",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bec9d2b-5b44-deb5-f3ba-e3c348c6b59d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma monotone_transfiniteIterate (hφ : ∀ (i : I), i ≤ φ i) :
    Monotone (fun (j : J) ↦ transfiniteIterate φ j i₀) := by
  intro k j hkj
  induction j using SuccOrder.limitRecOn with
  | isMin k hk =>
    obtain rfl := hk.eq_bot
    obtain rfl : k = ⊥ := by simpa using hkj
    rfl
  | succ k' hk' hkk' =>
    obtain hkj | rfl := hkj.lt_or_eq
    · refine (hkk' ((Order.lt_succ_iff_of_not_isMax hk').mp hkj)).trans ?_
      dsimp
      rw [transfiniteIterate_succ _ _ _ hk']
      apply hφ
    · rfl
  | isSuccLimit k' hk' _ =>
    obtain hkj | rfl := hkj.lt_or_eq
    · dsimp
      rw [transfiniteIterate_limit _ _ _ hk']
      exact le_iSup (fun (⟨l, hl⟩ : Set.Iio k') ↦ transfiniteIterate φ l i₀) ⟨k, hkj⟩
    · rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variant00e17d5c3b3b3c9b8604b4b80ffa4048f15b6c9ed2497be6d26b13b02b6da20b.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d467968f47a379d41f6f046177968449c576a2ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
