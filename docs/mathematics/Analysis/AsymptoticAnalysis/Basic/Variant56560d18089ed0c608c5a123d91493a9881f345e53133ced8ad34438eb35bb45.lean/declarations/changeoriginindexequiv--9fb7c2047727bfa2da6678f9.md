# changeOriginIndexEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54300d3f6eb90fc7ca28a80bdc828d9cc958bf1baf90f01eaec7e8e9193b0814",
  "kind": "def",
  "lexical_name": "changeOriginIndexEquiv",
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
  "slug": "changeoriginindexequiv--9fb7c2047727bfa2da6678f9",
  "source": {
    "blob": "9fbd45999b04f41db55eab772f33c8f9ba6b3aab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1194,
    "line": 1170,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant56560d18089ed0c608c5a123d91493a9881f345e53133ced8ad34438eb35bb45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fb7c2047727bfa2da6678f90c559f2979b4a0ab29cd3b18e8938548c54b033f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant56560d18089ed0c608c5a123d91493a9881f345e53133ced8ad34438eb35bb45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54300d3f6eb90fc7ca28a80bdc828d9cc958bf1baf90f01eaec7e8e9193b0814`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1170–1194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def changeOriginIndexEquiv :
    (Σk l : ℕ, { s : Finset (Fin (k + l)) // s.card = l }) ≃ Σn : ℕ, Finset (Fin n) where
  toFun s := ⟨s.1 + s.2.1, s.2.2⟩
  invFun s :=
    ⟨s.1 - s.2.card, s.2.card,
      ⟨s.2.map
        (Fin.castIso <| (tsub_add_cancel_of_le <| card_finset_fin_le s.2).symm).toEquiv.toEmbedding,
        Finset.card_map _⟩⟩
  left_inv := by
    rintro ⟨k, l, ⟨s : Finset (Fin <| k + l), hs : s.card = l⟩⟩
    dsimp only [Subtype.coe_mk]
    -- Lean can't automatically generalize `k' = k + l - s.card`, `l' = s.card`, so we explicitly
    -- formulate the generalized goal
    suffices ∀ k' l', k' = k → l' = l → ∀ (hkl : k + l = k' + l') (hs'),
        (⟨k', l', ⟨Finset.map (Fin.castIso hkl).toEquiv.toEmbedding s, hs'⟩⟩ :
          Σk l : ℕ, { s : Finset (Fin (k + l)) // s.card = l }) = ⟨k, l, ⟨s, hs⟩⟩ by
      apply this <;> simp only [hs, add_tsub_cancel_right]
    rintro _ _ rfl rfl hkl hs'
    simp only [Equiv.refl_toEmbedding, Fin.castIso_refl, Finset.map_refl, eq_self_iff_true,
      OrderIso.refl_toEquiv, and_self_iff, heq_iff_eq]
  right_inv := by
    rintro ⟨n, s⟩
    simp [tsub_add_cancel_of_le (card_finset_fin_le s), Fin.castIso_to_equiv]
#align formal_multilinear_series.change_origin_index_equiv FormalMultilinearSeries.changeOriginIndexEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant56560d18089ed0c608c5a123d91493a9881f345e53133ced8ad34438eb35bb45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant56560d18089ed0c608c5a123d91493a9881f345e53133ced8ad34438eb35bb45.lean#L1170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fbd45999b04f41db55eab772f33c8f9ba6b3aab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
