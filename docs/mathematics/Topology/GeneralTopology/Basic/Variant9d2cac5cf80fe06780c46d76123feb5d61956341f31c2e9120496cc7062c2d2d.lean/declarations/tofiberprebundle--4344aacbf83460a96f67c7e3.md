# toFiberPrebundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8862dded27dadc09db266eddf04fc5fe160a6bf47795425bf5b5633a3881e1a8",
  "kind": "def",
  "lexical_name": "toFiberPrebundle",
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
  "slug": "tofiberprebundle--4344aacbf83460a96f67c7e3",
  "source": {
    "blob": "88323637acd65639e883acfc9d0b58f6cd1a4088",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 929,
    "line": 915,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9d2cac5cf80fe06780c46d76123feb5d61956341f31c2e9120496cc7062c2d2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4344aacbf83460a96f67c7e3d751f7f065a1b992165ab3e548639bfa8b295f3c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9d2cac5cf80fe06780c46d76123feb5d61956341f31c2e9120496cc7062c2d2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8862dded27dadc09db266eddf04fc5fe160a6bf47795425bf5b5633a3881e1a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 915–929.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toFiberPrebundle (a : VectorPrebundle R F E) : FiberPrebundle F E :=
  { a with
    continuous_trivChange := fun e he e' he' ↦ by
      have : ContinuousOn (fun x : B × F ↦ a.coordChange he' he x.1 x.2)
          ((e'.baseSet ∩ e.baseSet) ×ˢ univ) :=
        isBoundedBilinearMapApply.continuous.comp_continuousOn
          ((a.continuousOn_coordChange he' he).prod_map continuousOn_id)
      rw [e.target_inter_preimage_symm_source_eq e', inter_comm]
      refine' (continuousOn_fst.prod this).congr _
      rintro ⟨b, f⟩ ⟨hb, -⟩
      dsimp only [Function.comp, Prod.map]
      rw [a.mk_coordChange _ _ hb, e'.mk_symm hb.1] }
#align vector_prebundle.to_fiber_prebundle VectorPrebundle.toFiberPrebundle

/-- Topology on the total space that will make the prebundle into a bundle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9d2cac5cf80fe06780c46d76123feb5d61956341f31c2e9120496cc7062c2d2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9d2cac5cf80fe06780c46d76123feb5d61956341f31c2e9120496cc7062c2d2d.lean#L915).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88323637acd65639e883acfc9d0b58f6cd1a4088` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
