# Set.OrdConnected.isPredArchimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f16a5927c1e59fd367f6260c87738ec4f953de5a797c28306c2de8d5905d617",
  "kind": "instance",
  "lexical_name": "Set.OrdConnected.isPredArchimedean",
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
  "slug": "set-ordconnected-ispredarchimedean--6ae3997db06c73243f6a5e82",
  "source": {
    "blob": "7fa5aec14e0857d443c087e5b3c3cc5a98c77286",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 357,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variantf1a0179438c1c179f838e39248c501666416f154ce7f8d31c6f935cb836def0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ae3997db06c73243f6a5e82fc68719a17d322c57fb86cff642302acedecb1ec",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variantf1a0179438c1c179f838e39248c501666416f154ce7f8d31c6f935cb836def0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f16a5927c1e59fd367f6260c87738ec4f953de5a797c28306c2de8d5905d617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Set.OrdConnected.isPredArchimedean [PredOrder α] [IsPredArchimedean α]
    (s : Set α) [s.OrdConnected] : IsPredArchimedean s where
  exists_pred_iterate_of_le := @fun ⟨b, hb⟩ ⟨c, hc⟩ hbc ↦ by classical
    simp only [Subtype.mk_le_mk] at hbc
    obtain ⟨n, hn⟩ := hbc.exists_pred_iterate
    use n
    induction n generalizing c with
    | zero => simp_all
    | succ n hi =>
      simp_all only [Function.iterate_succ, Function.comp_apply]
      change Order.pred^[n] (dite ..) = _
      split_ifs with h
      · dsimp only at h ⊢
        apply hi _ _ _ hn
        · rw [← hn]
          apply Order.pred_iterate_le
      · have : Order.pred (⟨c, hc⟩ : s) = ⟨c, hc⟩ := by
          change dite .. = _
          simp [h]
        rw [Function.iterate_fixed]
        · simp only [Order.pred_eq_iff_isMin] at this
          apply (this.eq_of_le _).symm
          exact hbc
        · exact this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variantf1a0179438c1c179f838e39248c501666416f154ce7f8d31c6f935cb836def0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variantf1a0179438c1c179f838e39248c501666416f154ce7f8d31c6f935cb836def0f.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa5aec14e0857d443c087e5b3c3cc5a98c77286` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
