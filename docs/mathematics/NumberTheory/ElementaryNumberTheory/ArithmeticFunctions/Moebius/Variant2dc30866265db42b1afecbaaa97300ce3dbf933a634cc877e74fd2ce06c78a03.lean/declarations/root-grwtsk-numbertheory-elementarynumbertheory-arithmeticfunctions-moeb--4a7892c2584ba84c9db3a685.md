# _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.IsRelPrime.moebius_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff25083b-c2ce-1fc9-9275-4ffec26f60d1",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.IsRelPrime.moebius_mul",
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
  "slug": "root-grwtsk-numbertheory-elementarynumbertheory-arithmeticfunctions-moeb--4a7892c2584ba84c9db3a685",
  "source": {
    "blob": "e69fb7eb0bce9b86d85e7f6bd83ca219eae5987d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 75,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a7892c2584ba84c9db3a6856aa2f3fca3ce165e356846566316bb342491e283",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff25083b-c2ce-1fc9-9275-4ffec26f60d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.IsRelPrime.moebius_mul (h : IsRelPrime a b) :
    moebius (a * b) = moebius a * moebius b := by
  rcases subsingleton_or_nontrivial α
  · rw [Subsingleton.elim a 1, moebius_one, one_mul, one_mul]
  by_cases ha : Squarefree a; swap
  · simp [ha, mt Squarefree.of_mul_left ha]
  by_cases hb : Squarefree b; swap
  · simp [hb, mt Squarefree.of_mul_right hb]
  have hab : Squarefree (a * b) := squarefree_mul_iff.mpr ⟨h, ha, hb⟩
  rw [hab.moebius_eq, Multiset.card_eq_card_of_rel (factors_mul ha.ne_zero hb.ne_zero),
    Multiset.card_add, pow_add, ha.moebius_eq, hb.moebius_eq]

end UniqueFactorizationMonoid
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69fb7eb0bce9b86d85e7f6bd83ca219eae5987d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
