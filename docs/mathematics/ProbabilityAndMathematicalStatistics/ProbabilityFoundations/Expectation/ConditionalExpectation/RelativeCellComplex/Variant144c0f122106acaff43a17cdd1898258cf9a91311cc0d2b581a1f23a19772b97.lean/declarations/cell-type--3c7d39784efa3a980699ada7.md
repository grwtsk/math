# Cell.type₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2863f84ea00b540a5d3ed294953fa867c5f49b2132f7f30e1aefc94e97861c9a",
  "kind": "def",
  "lexical_name": "Cell.type₁",
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
  "slug": "cell-type--3c7d39784efa3a980699ada7",
  "source": {
    "blob": "73179262d2625f5abf16a2c0f2bb57a46866097b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 395,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c7d39784efa3a980699ada7001ac10fb4e9ea6b563c3560bde599feb75e26b3",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2863f84ea00b540a5d3ed294953fa867c5f49b2132f7f30e1aefc94e97861c9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Cell.type₁ {j : ι} (c : f.Cell j) : (Subcomplex.range (f.m j)).N where
  simplex := c.ιSigmaStdSimplex.app _ (stdSimplex.objEquiv.symm (𝟙 _))
  nonDegenerate := by
    rw [nonDegenerate_iff_of_mono, stdSimplex.mem_nonDegenerate_iff_mono,
      Equiv.apply_symm_apply]
    infer_instance
  notMem := by
    rintro ⟨y, hy⟩
    obtain ⟨x', ⟨y, hy'⟩, rfl⟩ := f.ιSigmaHorn_jointly_surjective y
    rw [← NatTrans.comp_app_apply, ι_m, NatTrans.comp_app_apply, ιSigmaStdSimplex_eq_iff] at hy
    obtain ⟨rfl, rfl⟩ := hy
    exact objEquiv_symm_notMem_horn_of_isIso _ _ hy'

/-- Given a rank `j` cell `c` for a rank function `f` for a proper
pairing of a subcomplex of a simplicial set, this is
the nondegenerate simplex in `f.sigmaStdSimplex j`
not in the image of `f.m j : f.sigmaHorn j ⟶ f.sigmaStdSimplex j`
which corresponds to the `c.index`th-face of `c.type₁`. -/
@[implicit_reducible, simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73179262d2625f5abf16a2c0f2bb57a46866097b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
