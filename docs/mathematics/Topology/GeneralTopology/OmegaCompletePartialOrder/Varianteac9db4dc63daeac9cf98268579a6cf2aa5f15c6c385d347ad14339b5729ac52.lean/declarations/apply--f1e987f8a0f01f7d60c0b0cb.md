# apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2debe761be5a3391b58fbfb1c4545146302edc796dd2e44fe62dba44b33210ac",
  "kind": "def",
  "lexical_name": "apply",
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
  "slug": "apply--f1e987f8a0f01f7d60c0b0cb",
  "source": {
    "blob": "0d5ca006de8845a77665832a71a6d7b8914927f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 835,
    "line": 806,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1e987f8a0f01f7d60c0b0cb643e5c0455bcb7480fb21733f52a2a36e8cf4de2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2debe761be5a3391b58fbfb1c4545146302edc796dd2e44fe62dba44b33210ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 806–835.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def apply : (α →𝒄 β) × α →𝒄 β where
  toFun f := f.1 f.2
  monotone' x y h := by
    dsimp
    trans y.fst x.snd <;> [apply h.1; apply y.1.monotone h.2]
  cont := by
    intro c
    apply le_antisymm
    · apply ωSup_le
      intro i
      dsimp
      rw [(c _).fst.continuous]
      apply ωSup_le
      intro j
      apply le_ωSup_of_le (max i j)
      apply apply_mono
      exact monotone_fst (OrderHom.mono _ (le_max_left _ _))
      exact monotone_snd (OrderHom.mono _ (le_max_right _ _))
    · apply ωSup_le
      intro i
      apply le_ωSup_of_le i
      dsimp
      apply OrderHom.mono _
      apply le_ωSup_of_le i
      rfl
#align omega_complete_partial_order.continuous_hom.prod.apply OmegaCompletePartialOrder.ContinuousHom.Prod.apply
#align omega_complete_partial_order.continuous_hom.prod.apply_apply OmegaCompletePartialOrder.ContinuousHom.Prod.apply_apply

end Prod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean#L806).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d5ca006de8845a77665832a71a6d7b8914927f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
