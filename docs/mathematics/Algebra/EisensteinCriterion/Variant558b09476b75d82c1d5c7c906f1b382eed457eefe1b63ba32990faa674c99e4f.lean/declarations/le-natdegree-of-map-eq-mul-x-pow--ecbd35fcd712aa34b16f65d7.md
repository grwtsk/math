# le_natDegree_of_map_eq_mul_X_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0f0f629-1501-752a-2b83-12392c1a59d0",
  "kind": "theorem",
  "lexical_name": "le_natDegree_of_map_eq_mul_X_pow",
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
  "slug": "le-natdegree-of-map-eq-mul-x-pow--ecbd35fcd712aa34b16f65d7",
  "source": {
    "blob": "4595df688e0e87c9819338723b41d2770aa9c1e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 60,
    "path": "GRWTSK/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecbd35fcd712aa34b16f65d752062a83f15a9d45228c01d4ed592ffe53290501",
  "verification": {
    "reference": "docs/verification/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0f0f629-1501-752a-2b83-12392c1a59d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_natDegree_of_map_eq_mul_X_pow {n : ℕ} {P : Ideal R} (hP : P.IsPrime) {q : R[X]}
    {c : Polynomial (R ⧸ P)} (hq : map (mk P) q = c * X ^ n) (hc0 : c.degree = 0) :
    n ≤ q.natDegree :=
  WithBot.coe_le_coe.1
    (calc
      ↑n = degree (q.map (mk P)) := by
        rw [hq, degree_mul, hc0, zero_add, degree_pow, degree_X, nsmul_one, Nat.cast_withBot]
      _ ≤ degree q := (degree_map_le _ _)
      _ ≤ natDegree q := degree_le_natDegree
      )
set_option linter.uppercaseLean3 false in
#align polynomial.eisenstein_criterion_aux.le_nat_degree_of_map_eq_mul_X_pow Polynomial.EisensteinCriterionAux.le_natDegree_of_map_eq_mul_X_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4595df688e0e87c9819338723b41d2770aa9c1e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
