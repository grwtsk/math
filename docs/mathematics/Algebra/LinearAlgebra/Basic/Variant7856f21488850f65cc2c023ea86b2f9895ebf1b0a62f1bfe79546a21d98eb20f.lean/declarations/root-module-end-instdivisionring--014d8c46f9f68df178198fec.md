# _root_.Module.End.instDivisionRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f7f6cb6b1b1a8704ba8c66593eb0af4f5a990413b39e444cab4b5a15c90fcca",
  "kind": "instance",
  "lexical_name": "_root_.Module.End.instDivisionRing",
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
  "slug": "root-module-end-instdivisionring--014d8c46f9f68df178198fec",
  "source": {
    "blob": "b483316a477e936721c4f002b7aa31d398ef4d07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 519,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7856f21488850f65cc2c023ea86b2f9895ebf1b0a62f1bfe79546a21d98eb20f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:014d8c46f9f68df178198fec4079f834177bbf5f1a285677d0fb27c63871994d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant7856f21488850f65cc2c023ea86b2f9895ebf1b0a62f1bfe79546a21d98eb20f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f7f6cb6b1b1a8704ba8c66593eb0af4f5a990413b39e444cab4b5a15c90fcca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance _root_.Module.End.instDivisionRing
    [DecidableEq (Module.End R M)] [IsSimpleModule R M] : DivisionRing (Module.End R M) where
  inv f := if h : f = 0 then 0 else (LinearEquiv.ofBijective _ <| bijective_of_ne_zero h).symm
  exists_pair_ne := ⟨0, 1, have := IsSimpleModule.nontrivial R M; zero_ne_one⟩
  mul_inv_cancel a a0 := by
    simp_rw [dite_eq_right a0]; ext
    exact (LinearEquiv.ofBijective _ <| bijective_of_ne_zero a0).right_inv _
  inv_zero := dite_eq_left rfl
  nnqsmul := _
  nnqsmul_def := fun _ _ => rfl
  qsmul := _
  qsmul_def := fun _ _ => rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant7856f21488850f65cc2c023ea86b2f9895ebf1b0a62f1bfe79546a21d98eb20f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant7856f21488850f65cc2c023ea86b2f9895ebf1b0a62f1bfe79546a21d98eb20f.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b483316a477e936721c4f002b7aa31d398ef4d07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
