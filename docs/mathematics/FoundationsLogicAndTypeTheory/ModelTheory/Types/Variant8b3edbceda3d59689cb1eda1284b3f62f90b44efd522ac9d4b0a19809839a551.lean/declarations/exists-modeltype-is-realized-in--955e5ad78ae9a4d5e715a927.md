# exists_modelType_is_realized_in

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a55bd659-270e-b93b-2674-bb4066b594ef",
  "kind": "theorem",
  "lexical_name": "exists_modelType_is_realized_in",
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
  "slug": "exists-modeltype-is-realized-in--955e5ad78ae9a4d5e715a927",
  "source": {
    "blob": "cb0aaba30b8512ee1dc85f0e6534b22e686089d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant8b3edbceda3d59689cb1eda1284b3f62f90b44efd522ac9d4b0a19809839a551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:955e5ad78ae9a4d5e715a927bba7b2d87ae11bbbbac11ffc7969cc1619cd74bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant8b3edbceda3d59689cb1eda1284b3f62f90b44efd522ac9d4b0a19809839a551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a55bd659-270e-b93b-2674-bb4066b594ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_modelType_is_realized_in (p : T.CompleteType α) :
    ∃ M : Theory.ModelType.{u, v, max u v w} T, p ∈ T.realizedTypes M α := by
  obtain ⟨M⟩ := p.isMaximal.1
  refine ⟨(M.subtheoryModel p.subset).reduct (L.lhomWithConstants α), fun a => (L.con a : M), ?_⟩
  refine SetLike.ext fun φ => ?_
  simp only [CompleteType.mem_typeOf]
  refine
    (@Formula.realize_equivSentence_symm_con _
      ((M.subtheoryModel p.subset).reduct (L.lhomWithConstants α)) _ _ M.struc _ φ).trans
      (_root_.trans (_root_.trans ?_ (p.isMaximal.isComplete.realize_sentence_iff φ M))
        (p.isMaximal.mem_iff_models φ).symm)
  rfl

end

end Theory

end Language

end FirstOrder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant8b3edbceda3d59689cb1eda1284b3f62f90b44efd522ac9d4b0a19809839a551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant8b3edbceda3d59689cb1eda1284b3f62f90b44efd522ac9d4b0a19809839a551.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb0aaba30b8512ee1dc85f0e6534b22e686089d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
