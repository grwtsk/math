# card_commutator_dvd_index_center_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dec094e8-70be-6bdb-aa85-54166cb1c1de",
  "kind": "theorem",
  "lexical_name": "card_commutator_dvd_index_center_pow",
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
  "slug": "card-commutator-dvd-index-center-pow--21b8eeaaa43d89a581f0d0c7",
  "source": {
    "blob": "b8af0a83385325c4288019e4f928922583badfec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 178,
    "path": "GRWTSK/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21b8eeaaa43d89a581f0d0c7316126bb6e6f1d60e734f69c0f6307bf5101c917",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dec094e8-70be-6bdb-aa85-54166cb1c1de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_commutator_dvd_index_center_pow [Finite (commutatorSet G)] :
    Nat.card (_root_.commutator G) ∣
      (center G).index ^ ((center G).index * Nat.card (commutatorSet G) + 1) := by
  -- First handle the case when `Z(G)` has infinite index and `[G : Z(G)]` is defined to be `0`
  by_cases hG : (center G).index = 0
  · simp_rw [hG, zero_mul, zero_add, pow_one, dvd_zero]
  haveI : FiniteIndex (center G) := ⟨hG⟩
  -- Rewrite as `|Z(G) ∩ G'| * [G' : Z(G) ∩ G'] ∣ [G : Z(G)] ^ ([G : Z(G)] * n) * [G : Z(G)]`
  rw [← ((center G).subgroupOf (_root_.commutator G)).card_mul_index, pow_succ]
  -- We have `h1 : [G' : Z(G) ∩ G'] ∣ [G : Z(G)]`
  have h1 := relindex_dvd_index_of_normal (center G) (_root_.commutator G)
  -- So we can reduce to proving `|Z(G) ∩ G'| ∣ [G : Z(G)] ^ ([G : Z(G)] * n)`
  refine mul_dvd_mul ?_ h1
  -- We know that `[G' : Z(G) ∩ G'] < ∞` by `h1` and `hG`
  haveI : FiniteIndex ((center G).subgroupOf (_root_.commutator G)) :=
    ⟨ne_zero_of_dvd_ne_zero hG h1⟩
  -- We have `h2 : rank (Z(G) ∩ G') ≤ [G' : Z(G) ∩ G'] * rank G'` by Schreier's lemma
  have h2 := rank_le_index_mul_rank ((center G).subgroupOf (_root_.commutator G))
  -- We have `h3 : [G' : Z(G) ∩ G'] * rank G' ≤ [G : Z(G)] * n` by `h1` and `rank G' ≤ n`
  have h3 := Nat.mul_le_mul (Nat.le_of_dvd (Nat.pos_of_ne_zero hG) h1) (rank_commutator_le_card G)
  -- So we can reduce to proving `|Z(G) ∩ G'| ∣ [G : Z(G)] ^ rank (Z(G) ∩ G')`
  refine dvd_trans ?_ (pow_dvd_pow (center G).index (h2.trans h3))
  -- `Z(G) ∩ G'` is abelian, so it enough to prove that `g ^ [G : Z(G)] = 1` for `g ∈ Z(G) ∩ G'`
  apply card_dvd_exponent_pow_rank'
  intro g
  -- `Z(G)` is abelian, so `g ∈ Z(G) ∩ G' ≤ G' ≤ ker (transfer : G → Z(G))`
  have := Abelianization.commutator_subset_ker (MonoidHom.transferCenterPow G) g.1.2
  -- `transfer g` is defeq to `g ^ [G : Z(G)]`, so we are done
  simpa only [MonoidHom.mem_ker, Subtype.ext_iff] using this

/-- A bound for the size of the commutator subgroup in terms of the number of commutators. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8af0a83385325c4288019e4f928922583badfec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
