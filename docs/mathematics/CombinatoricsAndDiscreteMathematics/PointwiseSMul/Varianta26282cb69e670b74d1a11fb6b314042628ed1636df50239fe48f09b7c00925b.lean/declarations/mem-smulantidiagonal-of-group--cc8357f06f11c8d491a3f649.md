# mem_smulAntidiagonal_of_group

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3089a61-4af9-49dc-f081-d20809b9bd96",
  "kind": "theorem",
  "lexical_name": "mem_smulAntidiagonal_of_group",
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
  "slug": "mem-smulantidiagonal-of-group--cc8357f06f11c8d491a3f649",
  "source": {
    "blob": "3b164df99f12281f840e8b33b9c55781d2e2efd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PointwiseSMul/Varianta26282cb69e670b74d1a11fb6b314042628ed1636df50239fe48f09b7c00925b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc8357f06f11c8d491a3f649596012850c476c2e8a070bc014f9a29c2074f06a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PointwiseSMul/Varianta26282cb69e670b74d1a11fb6b314042628ed1636df50239fe48f09b7c00925b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3089a61-4af9-49dc-f081-d20809b9bd96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_smulAntidiagonal_of_group [Group G] [MulAction G P] [Semiring R] [Zero V]
    (f : R[G]) (x : P → V) (p : P) (gh : G × P) :
    gh ∈ Finset.SMulAntidiagonal p
      (Set.SMulAntidiagonal.finite_of_finite_fst f.coeff.support.finite_toSet x.support p) ↔
      f.coeff gh.1 ≠ 0 ∧ x gh.2 ≠ 0 ∧ gh.2 = gh.1⁻¹ • p := by
  rw [Finset.mem_smulAntidiagonal, eq_inv_smul_iff, Function.mem_support, Finset.mem_coe,
    Finsupp.mem_support_iff]

/-- A convolution-type scalar multiplication of the monoid algebra on the set of formal
functions. -/
@[to_additive (dont_translate := R) /-- A convolution-type scalar multiplication of the additive
monoid algebra on the set of formal functions. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PointwiseSMul/Varianta26282cb69e670b74d1a11fb6b314042628ed1636df50239fe48f09b7c00925b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PointwiseSMul/Varianta26282cb69e670b74d1a11fb6b314042628ed1636df50239fe48f09b7c00925b.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b164df99f12281f840e8b33b9c55781d2e2efd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
