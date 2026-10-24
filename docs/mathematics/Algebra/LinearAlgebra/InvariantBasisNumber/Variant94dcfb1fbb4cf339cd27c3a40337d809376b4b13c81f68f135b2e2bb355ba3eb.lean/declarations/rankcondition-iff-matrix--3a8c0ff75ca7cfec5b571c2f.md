# rankCondition_iff_matrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3222d9f3-135d-f10d-5c45-a332114b3f25",
  "kind": "theorem",
  "lexical_name": "rankCondition_iff_matrix",
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
  "slug": "rankcondition-iff-matrix--3a8c0ff75ca7cfec5b571c2f",
  "source": {
    "blob": "7f0cf001b50ac5c1d5c113918f19a12a75b8ff6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variant94dcfb1fbb4cf339cd27c3a40337d809376b4b13c81f68f135b2e2bb355ba3eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a8c0ff75ca7cfec5b571c2f7bceb4908e179dd1f5c39ee2b23d440b73a4a0b2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variant94dcfb1fbb4cf339cd27c3a40337d809376b4b13c81f68f135b2e2bb355ba3eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3222d9f3-135d-f10d-5c45-a332114b3f25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rankCondition_iff_matrix : RankCondition R ↔ ∀ n m
    (f : Matrix (Fin n) (Fin m) R) (g : Matrix (Fin m) (Fin n) R), g * f = 1 → m ≤ n := by
  simp_rw [rankCondition_iff_le_of_comp_eq_one, ← toLinearMapRight'.toEquiv
    |>.forall_congr_right, LinearEquiv.coe_toEquiv, ← toLinearMapRight'_mul,
    Module.End.one_eq_id, ← toLinearMapRight'_one, toLinearMapRight'.injective.eq_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variant94dcfb1fbb4cf339cd27c3a40337d809376b4b13c81f68f135b2e2bb355ba3eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variant94dcfb1fbb4cf339cd27c3a40337d809376b4b13c81f68f135b2e2bb355ba3eb.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f0cf001b50ac5c1d5c113918f19a12a75b8ff6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
