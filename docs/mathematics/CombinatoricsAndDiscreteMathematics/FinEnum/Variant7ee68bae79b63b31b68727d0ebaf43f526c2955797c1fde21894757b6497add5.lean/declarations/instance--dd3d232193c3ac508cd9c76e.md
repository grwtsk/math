# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9e331942faf5d34da69c92b5814c3a5207996e845f40146dec1bdfab90b1940",
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
  "slug": "instance--dd3d232193c3ac508cd9c76e",
  "source": {
    "blob": "1421586941a7f039f746e22511dc3a46f9a12585",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd3d232193c3ac508cd9c76e8a8c607e0f218588185a47c8257c811413c15696",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FinEnum/Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9e331942faf5d34da69c92b5814c3a5207996e845f40146dec1bdfab90b1940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsEmpty α] : Unique (FinEnum α) where
  default := ⟨0, Equiv.equivOfIsEmpty α (Fin 0)⟩
  uniq e := by
    show FinEnum.mk e.1 e.2 = _
    congr 1
    · exact card_eq_zero
    · refine heq_of_cast_eq ?_ (Subsingleton.allEq _ _)
      exact congrArg (α ≃ Fin ·) <| card_eq_zero
    · funext x
      exact ‹IsEmpty α›.elim x

/-- An empty type has a trivial enumeration. Not registered as an instance, to make sure that there
aren't two definitionally differing instances around. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FinEnum/Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1421586941a7f039f746e22511dc3a46f9a12585` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
