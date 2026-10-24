# infIrredUpperSet_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec80ad93-e6f0-8d26-3be2-8a1717df6f4f",
  "kind": "lemma",
  "lexical_name": "infIrredUpperSet_symm_apply",
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
  "slug": "infirredupperset-symm-apply--7e90c00ce3eeb37592e450f7",
  "source": {
    "blob": "145fdba85d6105bb32f60f8ddc114dc118690e9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e90c00ce3eeb37592e450f705224fc81c4ac1c67a7110619d1dcede10b653fc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec80ad93-e6f0-8d26-3be2-8a1717df6f4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma infIrredUpperSet_symm_apply (s : {s : UpperSet α // InfIrred s}) [Fintype s] :
    infIrredUpperSet.symm s = (s.1 : Set α).toFinset.inf id := by
  classical
  obtain ⟨s, hs⟩ := s
  obtain ⟨a, rfl⟩ := infIrred_iff_of_finite.1 hs
  cases nonempty_fintype α
  have : LocallyFiniteOrder α := Fintype.toLocallyFiniteOrder
  simp [symm_apply_eq]

end SemilatticeInf
end OrderIso

section DistribLattice
variable [DistribLattice α] [Fintype α] [@DecidablePred α SupIrred]

open Classical in
/-- **Birkhoff Representation for finite distributive lattices**. Any nonempty finite distributive
lattice is isomorphic to the lattice of lower sets of its sup-irreducible elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `145fdba85d6105bb32f60f8ddc114dc118690e9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
