# Cofix.bisim_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5cdba65-e32a-a3bd-dede-e479567f4c66",
  "kind": "theorem",
  "lexical_name": "Cofix.bisim_rel",
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
  "slug": "cofix-bisim-rel--ae35790caec6b7183bf87352",
  "source": {
    "blob": "1d6afaab4f0ed286fa5246a614135df9f07b3fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 243,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae35790caec6b7183bf873528ec38faed331fde04f452f64e852247eb95354ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5cdba65-e32a-a3bd-dede-e479567f4c66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Cofix.bisim_rel {α : TypeVec n} (r : Cofix F α → Cofix F α → Prop)
    (h : ∀ x y, r x y →
      appendFun id (Quot.mk r) <$$> Cofix.dest x = appendFun id (Quot.mk r) <$$> Cofix.dest y) :
    ∀ x y, r x y → x = y := by
  let r' (x y) := x = y ∨ r x y
  intro x y rxy
  apply Cofix.bisim_aux r'
  · intro x
    left
    rfl
  · intro x y r'xy
    cases r'xy with
    | inl h =>
      rw [h]
    | inr r'xy =>
      have : ∀ x y, r x y → r' x y := fun x y h => Or.inr h
      rw [← Quot.factor_mk_eq _ _ this]
      dsimp [r']
      rw [appendFun_comp_id]
      rw [@comp_map _ _ q _ _ _ (appendFun id (Quot.mk r)),
        @comp_map _ _ q _ _ _ (appendFun id (Quot.mk r))]
      rw [h _ _ r'xy]
  right; exact rxy

/-- Bisimulation principle using `LiftR` to match and relate children of two trees. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d6afaab4f0ed286fa5246a614135df9f07b3fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
