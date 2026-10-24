# card_isUnramified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3f440ca-9c1d-5bfa-0183-3f09798c2bc4",
  "kind": "lemma",
  "lexical_name": "card_isUnramified",
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
  "slug": "card-isunramified--b40b322ca69fd581b7b7046b",
  "source": {
    "blob": "86f95a1669795aaa94cc8c27a51437b1c637d46a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 483,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b40b322ca69fd581b7b7046b1c42a828c1a8986bbe7261e6b77e751a50396ffb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3f440ca-9c1d-5bfa-0183-3f09798c2bc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_isUnramified [NumberField k] [IsGalois k K] :
    #{w : InfinitePlace K | w.IsUnramified k} =
      #{w : InfinitePlace k | w.IsUnramifiedIn K} * finrank k K := by
  rw [← IsGalois.card_aut_eq_finrank,
    Finset.card_eq_sum_card_fiberwise (f := (comap · (algebraMap k K)))
    (t := {w : InfinitePlace k | w.IsUnramifiedIn K}), ← smul_eq_mul, ← sum_const]
  · refine sum_congr rfl (fun w hw ↦ ?_)
    obtain ⟨w, rfl⟩ := comap_surjective (K := K) w
    rw [mem_filter_univ] at hw
    trans #(MulAction.orbit Gal(K/k) w).toFinset
    · congr; ext w'
      rw [mem_filter, mem_filter_univ, Set.mem_toFinset, mem_orbit_iff, @eq_comm _ (comap w' _),
        and_iff_right_iff_imp]
      intro e; rwa [← isUnramifiedIn_comap, ← e]
    · rw [Nat.card_eq_fintype_card,
        ← MulAction.card_orbit_mul_card_stabilizer_eq_card_group _ w,
        ← Nat.card_eq_fintype_card (α := Stab w), card_stabilizer, ite_eq_left,
        mul_one, Set.toFinset_card]
      rwa [← isUnramifiedIn_comap]
  · simp [Set.MapsTo, isUnramifiedIn_comap]

open Finset in
open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86f95a1669795aaa94cc8c27a51437b1c637d46a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
