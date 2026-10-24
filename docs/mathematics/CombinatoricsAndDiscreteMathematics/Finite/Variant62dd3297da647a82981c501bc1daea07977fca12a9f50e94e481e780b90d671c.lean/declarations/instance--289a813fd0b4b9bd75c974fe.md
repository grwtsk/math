# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7b81363259f0fa6e45b7f544603832ddba2559c523c498aee8b86b176af4dc7",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--289a813fd0b4b9bd75c974fe",
  "source": {
    "blob": "61c052edd61bc799f849ccd639b670d0ab8dc777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 84,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant62dd3297da647a82981c501bc1daea07977fca12a9f50e94e481e780b90d671c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:289a813fd0b4b9bd75c974fe7bbf249b77a1bf4f5382f9ed5e4a9e50a8a222f9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variant62dd3297da647a82981c501bc1daea07977fca12a9f50e94e481e780b90d671c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7b81363259f0fa6e45b7f544603832ddba2559c523c498aee8b86b176af4dc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [X.Finite] (n : SimplexCategoryᵒᵖ) : Finite (X.obj n) := by
  obtain ⟨n⟩ := n
  induction n using SimplexCategory.rec with | _ n
  let φ : (Σ (m : Fin (n + 1)) (f : ⦋n⦌ ⟶ ⦋m.1⦌),
    X.nonDegenerate m.1) → X _⦋n⦌ := fun ⟨m, f, x⟩ ↦ X.map f.op x.1
  have hφ : Function.Surjective φ := fun x ↦ by
    obtain ⟨m, f, hf, y, rfl⟩ := X.exists_nonDegenerate x
    have := SimplexCategory.le_of_epi f
    exact ⟨⟨⟨m, by lia⟩, f, y⟩, rfl⟩
  exact Finite.of_surjective _ hφ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant62dd3297da647a82981c501bc1daea07977fca12a9f50e94e481e780b90d671c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant62dd3297da647a82981c501bc1daea07977fca12a9f50e94e481e780b90d671c.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61c052edd61bc799f849ccd639b670d0ab8dc777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
