# Set.OrdConnected.isPredArchimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0488c57e229e85f73b99b5a4deee73bf0a65b675879d83d846613e5b1794626a",
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
  "slug": "set-ordconnected-ispredarchimedean--6cd1b418b1a30cedb59cdc03",
  "source": {
    "blob": "f972eb5f4a4502b24281d7e67ebd8f6831635f04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 309,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cd1b418b1a30cedb59cdc0382ec4b82119e0ef119dd4d3d9dde230353d5afdf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0488c57e229e85f73b99b5a4deee73bf0a65b675879d83d846613e5b1794626a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–333.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f972eb5f4a4502b24281d7e67ebd8f6831635f04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
