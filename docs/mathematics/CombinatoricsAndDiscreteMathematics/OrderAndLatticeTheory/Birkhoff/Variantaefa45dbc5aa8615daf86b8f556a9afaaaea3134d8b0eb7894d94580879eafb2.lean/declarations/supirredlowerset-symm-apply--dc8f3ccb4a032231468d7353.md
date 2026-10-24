# supIrredLowerSet_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7d3a10a-0822-a029-d5ce-1bc4f62d727e",
  "kind": "lemma",
  "lexical_name": "supIrredLowerSet_symm_apply",
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
  "slug": "supirredlowerset-symm-apply--dc8f3ccb4a032231468d7353",
  "source": {
    "blob": "b6fbdfcab667822a37aa0915872ee3c944bc05d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantaefa45dbc5aa8615daf86b8f556a9afaaaea3134d8b0eb7894d94580879eafb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc8f3ccb4a032231468d735336ffe57daf43cc572745ef56f19ef6c84d5aea6c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantaefa45dbc5aa8615daf86b8f556a9afaaaea3134d8b0eb7894d94580879eafb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7d3a10a-0822-a029-d5ce-1bc4f62d727e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma supIrredLowerSet_symm_apply (s : {s : LowerSet α // SupIrred s}) [Fintype s] :
    supIrredLowerSet.symm s = (s.1 : Set α).toFinset.sup id := by
  classical
  obtain ⟨s, hs⟩ := s
  obtain ⟨a, rfl⟩ := supIrred_iff_of_finite.1 hs
  cases nonempty_fintype α
  have : LocallyFiniteOrder α := Fintype.toLocallyFiniteOrder
  simp [symm_apply_eq]

end SemilatticeSup
end OrderIso

section DistribLattice
variable [DistribLattice α] [Fintype α] [@DecidablePred α SupIrred]

open scoped Classical in
/-- **Birkhoff Representation for finite distributive lattices**. Any nonempty finite distributive
lattice is isomorphic to the lattice of lower sets of its sup-irreducible elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantaefa45dbc5aa8615daf86b8f556a9afaaaea3134d8b0eb7894d94580879eafb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantaefa45dbc5aa8615daf86b8f556a9afaaaea3134d8b0eb7894d94580879eafb2.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6fbdfcab667822a37aa0915872ee3c944bc05d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
