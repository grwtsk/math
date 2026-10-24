# card_commutator_le_of_finite_commutatorSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b06b51ef-3f8a-ae31-5c5d-4a133815f57b",
  "kind": "theorem",
  "lexical_name": "card_commutator_le_of_finite_commutatorSet",
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
  "slug": "card-commutator-le-of-finite-commutatorset--e42a1191109cd1091e84e32f",
  "source": {
    "blob": "b8af0a83385325c4288019e4f928922583badfec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 214,
    "path": "GRWTSK/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e42a1191109cd1091e84e32f608922eb9b075b3de9d0f18be6a3e072612b1e10",
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

Occurrence: `result:b06b51ef-3f8a-ae31-5c5d-4a133815f57b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_commutator_le_of_finite_commutatorSet [Finite (commutatorSet G)] :
    Nat.card (_root_.commutator G) ≤ cardCommutatorBound (Nat.card (commutatorSet G)) := by
  have h1 := index_center_le_pow (closureCommutatorRepresentatives G)
  have h2 := card_commutator_dvd_index_center_pow (closureCommutatorRepresentatives G)
  rw [card_commutatorSet_closureCommutatorRepresentatives] at h1 h2
  rw [card_commutator_closureCommutatorRepresentatives] at h2
  replace h1 :=
    h1.trans
      (Nat.pow_le_pow_right Finite.card_pos (rank_closureCommutatorRepresentatives_le G))
  replace h2 := h2.trans (pow_dvd_pow _ (add_le_add_right (mul_le_mul_right' h1 _) 1))
  rw [← pow_succ] at h2
  refine (Nat.le_of_dvd ?_ h2).trans (Nat.pow_le_pow_left h1 _)
  exact pow_pos (Nat.pos_of_ne_zero FiniteIndex.index_ne_zero) _

/-- A theorem of Schur: A group with finitely many commutators has finite commutator subgroup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8af0a83385325c4288019e4f928922583badfec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
