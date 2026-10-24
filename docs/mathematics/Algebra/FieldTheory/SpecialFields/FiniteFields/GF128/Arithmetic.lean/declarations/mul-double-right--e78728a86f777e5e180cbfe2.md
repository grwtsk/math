# mul_double_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7ec3bd3-e28b-cb08-36ac-69b10d202b31",
  "kind": "theorem",
  "lexical_name": "mul_double_right",
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
  "slug": "mul-double-right--e78728a86f777e5e180cbfe2",
  "source": {
    "blob": "e91a85ed59e081d99cb112be85bcfa5ebc30c610",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 133,
    "path": "GRWTSK/Algebra/FiniteField/GF128/Arithmetic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e78728a86f777e5e180cbfe23e648d1fd31298c711e3a83554f5f445356875f7",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7ec3bd3-e28b-cb08-36ac-69b10d202b31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_double_right (a b : Word) : mul a (double b) = double (mul a b) := by
  have hf : XorLinear (fun b => mul a (double b)) := by
    constructor
    · simp only [double_zero, mul_zero_right]
    · intro x y
      simp only [double_xor, mul_xor_right]
  have hg : XorLinear (fun b => double (mul a b)) := by
    constructor
    · simp only [mul_zero_right, double_zero]
    · intro x y
      simp only [mul_xor_right, double_xor]
  have h := linear_eq_of_basis (fun b => mul a (double b)) (fun b => double (mul a b)) hf hg
    (by
      intro i hi
      change mul a (double (basis i)) = double (mul a (basis i))
      by_cases hil : i < 127
      · rw [double_basis i hil, mul_basis a (i + 1) (by omega), mul_basis a i hi]
        exact iter_double i a
      · have hie : i = 127 := by omega
        subst i
        rw [mul_basis a 127 (by decide)]
        have hd : double (basis 127) = (135 : Word) := by decide
        rw [hd, ← iter_double]
        change mul a 135 = iter 128 a
        rw [iter_modulus]
        have hp : (135 : Word) = basis 0 ^^^ basis 1 ^^^ basis 2 ^^^ basis 7 := by decide
        rw [hp, mul_xor_right, mul_xor_right, mul_xor_right,
          mul_basis a 0 (by decide), mul_basis a 1 (by decide),
          mul_basis a 2 (by decide), mul_basis a 7 (by decide)]
        change a ^^^ iter 1 a ^^^ iter 2 a ^^^ iter 7 a = reduction a
        unfold reduction
        ac_rfl)
  exact congrFun h b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteField/GF128/Arithmetic.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e91a85ed59e081d99cb112be85bcfa5ebc30c610` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
