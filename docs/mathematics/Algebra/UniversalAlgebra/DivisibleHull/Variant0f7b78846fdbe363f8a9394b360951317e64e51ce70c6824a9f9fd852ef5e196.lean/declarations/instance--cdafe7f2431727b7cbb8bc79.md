# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad8888372fb595c3e74b5c068e7ab28644748ca00d92958406d08bb046c0e8d4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--cdafe7f2431727b7cbb8bc79",
  "source": {
    "blob": "4d86e6421f71b249a7c27edbd96d5743725a64b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 216,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdafe7f2431727b7cbb8bc79c52c49a6ab2d896c39bc97258ae9bd0f1e2056a1",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad8888372fb595c3e74b5c068e7ab28644748ca00d92958406d08bb046c0e8d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Module ℚ (DivisibleHull M) where
  one_smul x := by
    induction x with | mk m s
    simp [qsmul_of_nonneg zero_le_one, nnqsmul_mk]
  zero_smul := zero_qsmul
  smul_zero a := by simp [qsmul_def]
  smul_add a x y := by simp [qsmul_def, smul_add]
  add_smul a b x := by
    induction x with | mk m s
    simp_rw [qsmul_mk, mk_add_mk, mk_eq_mk]
    use 1
    suffices ((a + b).num * a.den * b.den * (s * s)) • m =
        ((a.num * b.den + b.num * a.den) * (a + b).den * (s * s)) • m by
      convert! this using 1
      all_goals
      simp [← natCast_zsmul, smul_smul, ← add_smul]
      ring_nf
    rw [Rat.add_num_den']
  mul_smul a b x := by
    induction x with | mk m s
    simp_rw [qsmul_mk, mk_eq_mk]
    use 1
    suffices ((a * b).num * a.den * b.den * s) • m = (a.num * b.num * (a * b).den * s) • m by
      convert! this using 1
      all_goals
      simp [← natCast_zsmul, smul_smul]
      ring_nf
    rw [Rat.mul_num_den']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d86e6421f71b249a7c27edbd96d5743725a64b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
