# homotopyGroupEquivFundamentalGroupOfUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e69591b4c628a29b1fa20fafcdd31c0fde7eebf907a4e0336795f8515d2d32d8",
  "kind": "def",
  "lexical_name": "homotopyGroupEquivFundamentalGroupOfUnique",
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
  "slug": "homotopygroupequivfundamentalgroupofunique--f1b01235cf7611ae3731e138",
  "source": {
    "blob": "0141b414ec7e2ef9bbc9e13f417c26e4cb1f752f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 511,
    "path": "GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1b01235cf7611ae3731e1385651e4ed1a1d5f483a98fb086a5e34bbeb728c75",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e69591b4c628a29b1fa20fafcdd31c0fde7eebf907a4e0336795f8515d2d32d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homotopyGroupEquivFundamentalGroupOfUnique (N) [Unique N] :
    HomotopyGroup N X x ≃ FundamentalGroup X x :=
  Quotient.congr (genLoopEquivOfUnique N) fun a₁ a₂ ↦ by
    constructor <;> rintro ⟨H⟩
    · exact
        ⟨{  toFun := fun tx ↦ H (tx.fst, fun _ ↦ tx.snd)
            map_zero_left := fun _ ↦ H.apply_zero _
            map_one_left := fun _ ↦ H.apply_one _
            prop' := fun t y iH ↦ H.prop' _ _ ⟨default, iH⟩ }⟩
    refine
      ⟨⟨⟨⟨fun tx ↦ H (tx.fst, tx.snd default), H.continuous.comp ?_⟩, fun y ↦ ?_, fun y ↦ ?_⟩, ?_⟩⟩
    · fun_prop
    · exact (H.apply_zero _).trans (congr_arg a₁ (eq_const_of_unique y).symm)
    · exact (H.apply_one _).trans (congr_arg a₂ (eq_const_of_unique y).symm)
    · rintro t y ⟨i, iH⟩
      cases Unique.eq_default i
      exact (H.eq_fst _ iH).trans (congr_arg a₁ (eq_const_of_unique y).symm)

/-- The first homotopy group at `x` is in bijection with the fundamental group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0141b414ec7e2ef9bbc9e13f417c26e4cb1f752f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
