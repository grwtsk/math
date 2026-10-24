# order_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75a75133-efa4-b59d-22a8-f01ed4a853a0",
  "kind": "theorem",
  "lexical_name": "order_pow",
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
  "slug": "order-pow--a7296c313cea8b8cd2b7d3dd",
  "source": {
    "blob": "daf7c393bf4353c52a87b85e8951bd1abdd0586d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 379,
    "path": "GRWTSK/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7296c313cea8b8cd2b7d3dd1bc32f4805729fb5b95ddd06daede2ef194b3fbe",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75a75133-efa4-b59d-22a8-f01ed4a853a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_pow [Nontrivial R] (φ : R⟦X⟧) (n : ℕ) :
    order (φ ^ n) = n • order φ := by
  rcases subsingleton_or_nontrivial R with hR | hR
  · simp only [Subsingleton.eq_zero φ, order_zero, nsmul_eq_mul]
    by_cases hn : n = 0
    · simp [hn, pow_zero]
    · simp [zero_pow hn, ENat.mul_top', if_neg hn]
  induction n with
  | zero => simp
  | succ n hn =>
    simp only [add_smul, one_smul, pow_succ, order_mul, hn]

/-- The operation of dividing a power series by the largest possible power of `X`
preserves multiplication. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daf7c393bf4353c52a87b85e8951bd1abdd0586d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
