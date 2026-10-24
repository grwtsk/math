# jensenTwo_charpoly_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89384082-6581-6d42-179c-63a93be3e2ee",
  "kind": "theorem",
  "lexical_name": "jensenTwo_charpoly_source",
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
  "slug": "jensentwo-charpoly-source--e52b984aa566d14b1f93601a",
  "source": {
    "blob": "a7aa88ca97783ef903ed90df86fa2b524952ca81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 148,
    "path": "GRWTSK/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e52b984aa566d14b1f93601aae218d96617c84572477a56ae0954b4e9b188f58",
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

Occurrence: `result:89384082-6581-6d42-179c-63a93be3e2ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jensenTwo_charpoly_source :
    C (leadingScalar 2) * (quarticCompanion jensenTwoB jensenTwoC).charpoly =
      jensenPolynomial 2 := by
  rw [quarticCompanion_charpoly, jensenPolynomial_two]
  have ha2 := (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula 2).ne'
  have hb : leadingScalar 2 * jensenTwoB = (3/4 : ℝ) * coefficient 1 := by
    norm_num [leadingScalar, jensenTwoB]
    field_simp
    ring
  have hc : leadingScalar 2 * jensenTwoC = coefficient 0 := by
    norm_num [leadingScalar, jensenTwoC]
    field_simp
    ring
  have hl : leadingScalar 2 = (3/32 : ℝ) * coefficient 2 := by
    norm_num [leadingScalar]
    ring
  calc
    _ = C (leadingScalar 2) * X^4 - C (leadingScalar 2 * jensenTwoB) * X^2 +
        C (leadingScalar 2 * jensenTwoC) := by
      rw [Polynomial.C_mul, Polynomial.C_mul]
      ring
    _ = _ := by rw [hb, hc, hl]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7aa88ca97783ef903ed90df86fa2b524952ca81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
