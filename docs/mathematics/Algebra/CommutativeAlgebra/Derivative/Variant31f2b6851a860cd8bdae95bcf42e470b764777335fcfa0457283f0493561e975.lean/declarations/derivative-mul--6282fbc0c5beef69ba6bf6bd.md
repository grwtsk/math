# derivative_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:320bf77b-eadc-ddad-8cfd-f2dad1f0c1ff",
  "kind": "theorem",
  "lexical_name": "derivative_mul",
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
  "slug": "derivative-mul--6282fbc0c5beef69ba6bf6bd",
  "source": {
    "blob": "2d70f88e48c223c2d4e7b2747717889acf4c0ff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 235,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant31f2b6851a860cd8bdae95bcf42e470b764777335fcfa0457283f0493561e975.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6282fbc0c5beef69ba6bf6bd2a7f564e6c857e0f4b958e93083e6f4db341a15c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Derivative/Variant31f2b6851a860cd8bdae95bcf42e470b764777335fcfa0457283f0493561e975.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:320bf77b-eadc-ddad-8cfd-f2dad1f0c1ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_mul {f g : R[X]} : derivative (f * g) = derivative f * g + f * derivative g := by
  induction f using Polynomial.induction_on' with
  | add => simp only [add_mul, map_add, add_assoc, add_left_comm, *]
  | monomial m a => ?_
  induction g using Polynomial.induction_on' with
  | add => simp only [mul_add, map_add, add_assoc, add_left_comm, *]
  | monomial n b => ?_
  simp only [monomial_mul_monomial, derivative_monomial]
  simp only [mul_assoc, (Nat.cast_commute _ _).eq, Nat.cast_add, mul_add, map_add]
  cases m with
  | zero => simp only [zero_add, Nat.cast_zero, mul_zero, map_zero]
  | succ m =>
  cases n with
  | zero => simp only [add_zero, Nat.cast_zero, mul_zero, map_zero]
  | succ n => grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Derivative/Variant31f2b6851a860cd8bdae95bcf42e470b764777335fcfa0457283f0493561e975.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant31f2b6851a860cd8bdae95bcf42e470b764777335fcfa0457283f0493561e975.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d70f88e48c223c2d4e7b2747717889acf4c0ff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
