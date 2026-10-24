# wittStructureRat_rec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32cc87b2-a153-d066-4ae7-53fdf4505c0a",
  "kind": "theorem",
  "lexical_name": "wittStructureRat_rec",
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
  "slug": "wittstructurerat-rec--08bd8dadd4249e93f68c20d2",
  "source": {
    "blob": "5749ba052c4c449d5fec9ef21e4ada1160e94a07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 187,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variant77ca7eb6c2e4641e48c75bd000660a841bfa5c278a7706196f12e60817645caa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08bd8dadd4249e93f68c20d2c1386f84c5befae7f87f0fa424d85bf0da490be4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variant77ca7eb6c2e4641e48c75bd000660a841bfa5c278a7706196f12e60817645caa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32cc87b2-a153-d066-4ae7-53fdf4505c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem wittStructureRat_rec (Φ : MvPolynomial idx ℚ) (n : ℕ) :
    wittStructureRat p Φ n =
      C (1 / (p : ℚ) ^ n) *
        (bind₁ (fun b => rename (fun i => (b, i)) (W_ ℚ n)) Φ -
          ∑ i ∈ range n, C ((p : ℚ) ^ i) * wittStructureRat p Φ i ^ p ^ (n - i)) := by
  calc
    wittStructureRat p Φ n = C (1 / (p : ℚ) ^ n) * (wittStructureRat p Φ n * C ((p : ℚ) ^ n)) := ?_
    _ = _ := by rw [wittStructureRat_rec_aux]
  rw [mul_left_comm, ← C_mul, div_mul_cancel₀, C_1, mul_one]
  exact pow_ne_zero _ (Nat.cast_ne_zero.2 hp.1.ne_zero)

/-- `wittStructureInt Φ` is a family of polynomials `ℕ → MvPolynomial (idx × ℕ) ℤ`
that are uniquely characterised by the property that
```
bind₁ (wittStructureInt p Φ) (wittPolynomial p ℤ n) =
bind₁ (fun i ↦ (rename (prod.mk i) (wittPolynomial p ℤ n))) Φ
```
In other words: evaluating the `n`-th Witt polynomial on the family `wittStructureInt Φ`
is the same as evaluating `Φ` on the (appropriately renamed) `n`-th Witt polynomials.

See `wittStructureInt_prop` for this property,
and `wittStructureInt_existsUnique` for the fact that `wittStructureInt`
gives the unique family of polynomials with this property. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variant77ca7eb6c2e4641e48c75bd000660a841bfa5c278a7706196f12e60817645caa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variant77ca7eb6c2e4641e48c75bd000660a841bfa5c278a7706196f12e60817645caa.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5749ba052c4c449d5fec9ef21e4ada1160e94a07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
