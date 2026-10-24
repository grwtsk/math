# differentialFiniteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b0a5ac72c09a4dd0dddcf13b36259879dc3220f1919f6d58c27f1e51272cb8a",
  "kind": "def",
  "lexical_name": "differentialFiniteDimensional",
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
  "slug": "differentialfinitedimensional--391eebb6f04f2492f1cd5a29",
  "source": {
    "blob": "509e9c3c86c1b5622f611f58a41c63daf7f14964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 143,
    "path": "GRWTSK/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:391eebb6f04f2492f1cd5a29e492051793ec01551fdbfec851dcf9e0cfb7f819",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b0a5ac72c09a4dd0dddcf13b36259879dc3220f1919f6d58c27f1e51272cb8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def differentialFiniteDimensional [FiniteDimensional F K] : Differential K :=
  let k := (Field.exists_primitive_element F K).choose
  have h : F⟮k⟯ = ⊤ := (Field.exists_primitive_element F K).choose_spec
  have : Fact (minpoly F k).Monic := ⟨minpoly.monic (IsAlgebraic.of_finite ..).isIntegral⟩
  have : Fact (Irreducible (minpoly F k)) :=
    ⟨minpoly.irreducible (IsAlgebraic.of_finite ..).isIntegral⟩
  Differential.equiv (IntermediateField.adjoinRootEquivAdjoin F
    (IsAlgebraic.of_finite F k).isIntegral |>.trans (IntermediateField.equivOfEq h) |>.trans
    IntermediateField.topEquiv).symm.toRingEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `509e9c3c86c1b5622f611f58a41c63daf7f14964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
