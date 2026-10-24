# _root_.GRWTSK.Algebra.LinearAlgebra.LiftRankMulLiftRank.Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.LinearMap.existsUnique_eq_smul_id_of_finrank_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d199601-17f7-5b8b-2c54-e3a75e2de5dd",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.LiftRankMulLiftRank.Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.LinearMap.existsUnique_eq_smul_id_of_finrank_eq_one",
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
  "slug": "root-grwtsk-algebra-linearalgebra-liftrankmulliftrank-varianta25ac832cd9--3b9f5add7c0b8c4468a79d31",
  "source": {
    "blob": "56f78c3c06bdc64d23e6ad9345fccd34eddfcbc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 396,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b9f5add7c0b8c4468a79d31dbf4f964bd6e517bba5b09a2d620245f0aec122f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d199601-17f7-5b8b-2c54-e3a75e2de5dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.LiftRankMulLiftRank.Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.LinearMap.existsUnique_eq_smul_id_of_finrank_eq_one
    (d1 : Module.finrank R M = 1) (u : M →ₗ[R] M) :
    ∃! c : R, u = c • LinearMap.id := by
  let e := (nonempty_linearEquiv_of_finrank_eq_one d1).some
  set c := e.symm (u (e 1)) with hc
  suffices u = c • LinearMap.id by
    use c
    simp only [this, true_and]
    intro d hcd
    rw [LinearMap.ext_iff] at hcd
    simpa using (LinearEquiv.congr_arg (e := e.symm) (hcd (e 1))).symm
  ext x
  have (x : M) : x = (e.symm x) • (e 1) := by simp [← LinearEquiv.map_smul]
  rw [this x]
  simp only [hc, map_smul, LinearMap.smul_apply, LinearMap.id_coe, id_eq]
  rw [← this]

/-- Endomorphisms of a free module of rank one are homotheties. -/
@[simps apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56f78c3c06bdc64d23e6ad9345fccd34eddfcbc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
