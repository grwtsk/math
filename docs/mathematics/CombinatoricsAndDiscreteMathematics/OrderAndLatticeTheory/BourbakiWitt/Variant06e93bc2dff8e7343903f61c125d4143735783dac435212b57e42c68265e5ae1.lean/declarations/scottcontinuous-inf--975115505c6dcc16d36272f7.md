# ωScottContinuous.inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7af8f41f-abdb-c9de-9ebe-83604207ea10",
  "kind": "lemma",
  "lexical_name": "ωScottContinuous.inf",
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
  "slug": "scottcontinuous-inf--975115505c6dcc16d36272f7",
  "source": {
    "blob": "efae4e51caaa7a1e74362942deb9ef0c78d826e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 294,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant06e93bc2dff8e7343903f61c125d4143735783dac435212b57e42c68265e5ae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:975115505c6dcc16d36272f77a10f759a8cc06ee9222960e2c8cdb3a7822c477",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant06e93bc2dff8e7343903f61c125d4143735783dac435212b57e42c68265e5ae1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7af8f41f-abdb-c9de-9ebe-83604207ea10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ωScottContinuous.inf (hf : ωScottContinuous f) (hg : ωScottContinuous g) :
    ωScottContinuous (f ⊓ g) := by
  refine ωScottContinuous.of_monotone_map_ωSup
    ⟨hf.monotone.inf hg.monotone, fun c ↦ eq_of_forall_ge_iff fun a ↦ ?_⟩
  simp only [Pi.inf_apply, hf.map_ωSup c, hg.map_ωSup c, inf_le_iff, ωSup_le_iff, Chain.coe_map,
    Function.comp, OrderHom.coe_mk, ← forall_or_left, ← forall_or_right]
  exact ⟨fun h _ ↦ h _ _, fun h i j ↦
    (h (max j i)).imp (le_trans <| hf.monotone <| c.mono <| le_max_left _ _)
      (le_trans <| hg.monotone <| c.mono <| le_max_right _ _)⟩

end CompleteLattice
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant06e93bc2dff8e7343903f61c125d4143735783dac435212b57e42c68265e5ae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant06e93bc2dff8e7343903f61c125d4143735783dac435212b57e42c68265e5ae1.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efae4e51caaa7a1e74362942deb9ef0c78d826e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
