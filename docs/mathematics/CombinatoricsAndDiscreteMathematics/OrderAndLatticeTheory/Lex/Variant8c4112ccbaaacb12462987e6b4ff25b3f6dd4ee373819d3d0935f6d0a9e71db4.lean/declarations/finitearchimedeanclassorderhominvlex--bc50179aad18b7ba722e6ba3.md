# finiteArchimedeanClassOrderHomInvLex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0ae20ba8c21ed98237cf20a3aaf9042f5155523961565ece25589b5b248ec67",
  "kind": "def",
  "lexical_name": "finiteArchimedeanClassOrderHomInvLex",
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
  "slug": "finitearchimedeanclassorderhominvlex--bc50179aad18b7ba722e6ba3",
  "source": {
    "blob": "f1e6b3ce63f85c04e2120fe066229b0e88764fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 287,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant8c4112ccbaaacb12462987e6b4ff25b3f6dd4ee373819d3d0935f6d0a9e71db4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc50179aad18b7ba722e6ba3f72dbb8f260ed8a336d974f13a7e9c297599473c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant8c4112ccbaaacb12462987e6b4ff25b3f6dd4ee373819d3d0935f6d0a9e71db4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0ae20ba8c21ed98237cf20a3aaf9042f5155523961565ece25589b5b248ec67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def finiteArchimedeanClassOrderHomInvLex :
    Γ ×ₗ FiniteArchimedeanClass R →o FiniteArchimedeanClass (Lex R⟦Γ⟧) where
  toFun x := (ofLex x).2.liftOrderHom
    (fun a ↦ FiniteArchimedeanClass.mk (toLex (single (ofLex x).1 a.val)) (by
      simpa using! a.prop))
    fun ⟨a, ha⟩ ⟨b, hb⟩ h ↦ by
      rw [FiniteArchimedeanClass.mk_le_mk, archimedeanClassMk_le_archimedeanClassMk_iff]
      simpa [ha, hb] using! h
  monotone' a b := a.rec fun (ao, ac) ↦ b.rec fun (bo, bc) h ↦ by
    obtain h | ⟨rfl, hle⟩ := Prod.Lex.le_iff.mp h
    · induction ac using FiniteArchimedeanClass.ind with | mk a ha
      induction bc using FiniteArchimedeanClass.ind with | mk b hb
      simp only [ne_eq, ofLex_toLex, FiniteArchimedeanClass.liftOrderHom_mk]
      rw [FiniteArchimedeanClass.mk_le_mk, archimedeanClassMk_le_archimedeanClassMk_iff]
      exact .inl (by simpa [ha, hb] using! h)
    · exact OrderHom.monotone _ hle

set_option backward.isDefEq.respectTransparency.types false in
variable (Γ R) in
/-- The correspondence between finite archimedean classes of `Lex R⟦Γ⟧`
and lexicographical pairs of `HahnSeries.orderTop` and the finite archimedean class of
`HahnSeries.leadingCoeff`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant8c4112ccbaaacb12462987e6b4ff25b3f6dd4ee373819d3d0935f6d0a9e71db4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant8c4112ccbaaacb12462987e6b4ff25b3f6dd4ee373819d3d0935f6d0a9e71db4.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1e6b3ce63f85c04e2120fe066229b0e88764fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
