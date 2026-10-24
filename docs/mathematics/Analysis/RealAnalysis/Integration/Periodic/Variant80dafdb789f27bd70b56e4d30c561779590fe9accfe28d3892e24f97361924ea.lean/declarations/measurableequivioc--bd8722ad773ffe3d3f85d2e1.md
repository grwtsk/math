# measurableEquivIoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d04dacc2d9bbcd10bfdde63e75a8edf1e32f22e5cf62cf5a3e17014f949ba872",
  "kind": "def",
  "lexical_name": "measurableEquivIoc",
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
  "slug": "measurableequivioc--bd8722ad773ffe3d3f85d2e1",
  "source": {
    "blob": "1bce6106f3aebf44b66be58d8a8f82ff3650dd41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd8722ad773ffe3d3f85d2e1c7dedf5c9512902155175b3d3f2f4a821d80155f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d04dacc2d9bbcd10bfdde63e75a8edf1e32f22e5cf62cf5a3e17014f949ba872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def measurableEquivIoc (a : ℝ) : AddCircle T ≃ᵐ Ioc a (a + T) where
  toEquiv := equivIoc T a
  measurable_toFun := measurable_of_measurable_on_compl_singleton _
    (continuousOn_iff_continuous_restrict.mp <| continuousOn_of_forall_continuousAt fun _x hx =>
      continuousAt_equivIoc T a hx).measurable
  measurable_invFun := AddCircle.measurable_mk'.comp measurable_subtype_coe

/-- The isomorphism `AddCircle T ≃ Ico a (a + T)` whose inverse is the natural quotient map,
  as an equivalence of measurable spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bce6106f3aebf44b66be58d8a8f82ff3650dd41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
