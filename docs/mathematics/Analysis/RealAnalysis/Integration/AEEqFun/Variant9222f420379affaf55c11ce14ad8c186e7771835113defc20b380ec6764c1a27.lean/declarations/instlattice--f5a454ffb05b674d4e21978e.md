# instLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a24cdaad7078b5764574968d51b332cb30c6462bb3f3d38ee00773b1ac7f530e",
  "kind": "instance",
  "lexical_name": "instLattice",
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
  "slug": "instlattice--f5a454ffb05b674d4e21978e",
  "source": {
    "blob": "9ae3202102a96e9c7e93be4eb840a1b34b217a4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 563,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant9222f420379affaf55c11ce14ad8c186e7771835113defc20b380ec6764c1a27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5a454ffb05b674d4e21978e884a16143705b876112e023d643b682e7e887034",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqFun/Variant9222f420379affaf55c11ce14ad8c186e7771835113defc20b380ec6764c1a27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a24cdaad7078b5764574968d51b332cb30c6462bb3f3d38ee00773b1ac7f530e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–581.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLattice [Lattice β] [TopologicalLattice β] : Lattice (α →ₘ[μ] β) :=
  { AEEqFun.instPartialOrder with
    sup := max
    le_sup_left := AEEqFun.le_sup_left
    le_sup_right := AEEqFun.le_sup_right
    sup_le := AEEqFun.sup_le
    inf := min
    inf_le_left := AEEqFun.inf_le_left
    inf_le_right := AEEqFun.inf_le_right
    le_inf := AEEqFun.le_inf }

end Lattice

end Order

variable (α)

/-- The equivalence class of a constant function: `[fun _ : α => b]`, based on the equivalence
relation of being almost everywhere equal -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqFun/Variant9222f420379affaf55c11ce14ad8c186e7771835113defc20b380ec6764c1a27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant9222f420379affaf55c11ce14ad8c186e7771835113defc20b380ec6764c1a27.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ae3202102a96e9c7e93be4eb840a1b34b217a4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
