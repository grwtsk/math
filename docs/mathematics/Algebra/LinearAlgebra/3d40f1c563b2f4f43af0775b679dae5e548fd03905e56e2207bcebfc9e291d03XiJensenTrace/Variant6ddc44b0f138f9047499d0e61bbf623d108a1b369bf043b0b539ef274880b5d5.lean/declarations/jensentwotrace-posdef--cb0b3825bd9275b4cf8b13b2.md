# jensenTwoTrace_posDef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e4a280e-e66f-860a-5b1d-9fe8fbfe85c0",
  "kind": "theorem",
  "lexical_name": "jensenTwoTrace_posDef",
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
  "slug": "jensentwotrace-posdef--cb0b3825bd9275b4cf8b13b2",
  "source": {
    "blob": "a7aa88ca97783ef903ed90df86fa2b524952ca81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 102,
    "path": "GRWTSK/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb0b3825bd9275b4cf8b13b2f8342cbbafbf06a5f58163755b62c94cd6264dd7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e4a280e-e66f-860a-5b1d-9fe8fbfe85c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jensenTwoTrace_posDef : jensenTwoTrace.PosDef := by
  apply Matrix.PosDef.of_dotProduct_mulVec_pos jensenTwoTrace_posSemidef.isHermitian
  intro u hu
  simp only [star_trivial]
  rw [jensenTwoTrace, quarticHermite_square _ _ jensenTwoB_pos.ne']
  have hb := jensenTwoB_pos
  have hc := jensenTwoC_pos
  have hd := jensenTwo_discriminant_pos
  have hD : 0 < 2*jensenTwoC*(jensenTwoB^2-4*jensenTwoC)/jensenTwoB := by positivity
  have h0 := sq_nonneg (u 0 + jensenTwoB / 2 * u 2)
  have h1 := sq_nonneg (u 1 + (jensenTwoB^2-2*jensenTwoC)/jensenTwoB * u 3)
  have h2 := mul_nonneg hd.le (sq_nonneg (u 2))
  have h3 := mul_nonneg hD.le (sq_nonneg (u 3))
  have h4 := mul_nonneg (show 0 ≤ 2*jensenTwoB by positivity) h1
  by_contra hh
  have hle := le_of_not_gt hh
  have hz2 : u 2 = 0 := by
    have hz : (jensenTwoB ^ 2 - 4*jensenTwoC) * u 2 ^ 2 = 0 := by
      linarith only [h0, h2, h3, h4, hle]
    exact (sq_eq_zero_iff).mp ((mul_eq_zero.mp hz).resolve_left hd.ne')
  have hz3 : u 3 = 0 := by
    have hz : (2*jensenTwoC*(jensenTwoB^2-4*jensenTwoC)/jensenTwoB) * u 3 ^ 2 = 0 := by
      linarith only [h0, h2, h3, h4, hle]
    exact (sq_eq_zero_iff).mp ((mul_eq_zero.mp hz).resolve_left hD.ne')
  rw [hz2, hz3] at hle
  norm_num at hle
  have hz0 : u 0 = 0 := by nlinarith [sq_nonneg (u 0), sq_nonneg (u 1)]
  have hz1 : u 1 = 0 := by
    have hz : (2*jensenTwoB) * u 1 ^ 2 = 0 := by
      nlinarith only [hle, sq_nonneg (u 0),
        mul_nonneg (show 0 ≤ 2*jensenTwoB by positivity) (sq_nonneg (u 1))]
    exact sq_eq_zero_iff.mp ((mul_eq_zero.mp hz).resolve_left (by positivity))
  apply hu
  ext i
  fin_cases i <;> simp [hz0, hz1, hz2, hz3]

open XiJensenPolynomial Polynomial XiJensenWeights

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7aa88ca97783ef903ed90df86fa2b524952ca81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
