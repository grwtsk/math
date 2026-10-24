# prime_moebius_lcm_le_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39231e9d-8fc9-35a7-d21f-9d531dbd8a44",
  "kind": "theorem",
  "lexical_name": "prime_moebius_lcm_le_card",
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
  "slug": "prime-moebius-lcm-le-card--938b88105340f73cb3037e8a",
  "source": {
    "blob": "879b6ab99bc22157c1b65dcfdb85bd9bfdb83634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 108,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:938b88105340f73cb3037e8ab207125ebe239f9b55967fe3e928a467c94acdea",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39231e9d-8fc9-35a7-d21f-9d531dbd8a44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_moebius_lcm_le_card (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (w : ℕ → ℝ) (N W : ℝ) (hN : 0 < N) (hW : 0 ≤ W)
    (hNp : ∀ p ∈ P, N ≤ (p : ℝ)) (hw : ∀ p ∈ P, 0 ≤ w p ∧ w p ≤ W)
    (hcard : (P.card : ℝ) ≤ N) :
    (∑ p ∈ P, ∑ q ∈ P,
      (moebius p : ℝ) * (moebius q : ℝ) * w p * w q / (Nat.lcm p q : ℝ)) ≤
      2 * W ^ 2 * (P.card : ℝ) / N := by
  apply (prime_moebius_lcm_le P hP w N W hN hW hNp hw).trans
  have h0 : 0 ≤ (P.card : ℝ) / N := by positivity
  have h1 : (P.card : ℝ) / N ≤ 1 := (div_le_one hN).mpr hcard
  have hs : ((P.card : ℝ) / N) ^ 2 ≤ (P.card : ℝ) / N := by nlinarith
  calc
    _ ≤ W ^ 2 * (2 * ((P.card : ℝ) / N)) :=
      mul_le_mul_of_nonneg_left (by linarith) (sq_nonneg W)
    _ = _ := by ring

end
end PrimeSieveCovarianceScratch

open Finset ArithmeticFunction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `879b6ab99bc22157c1b65dcfdb85bd9bfdb83634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
