# sub_one_lt_natAbs_cyclotomic_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:935f5e97-bb4c-6b37-0863-f6c275f72bdb",
  "kind": "theorem",
  "lexical_name": "sub_one_lt_natAbs_cyclotomic_eval",
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
  "slug": "sub-one-lt-natabs-cyclotomic-eval--3fd5041f31c1cb8f22bcb66b",
  "source": {
    "blob": "2ca71a80e702377fbfb69a851150ab4857ffcb82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 327,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fd5041f31c1cb8f22bcb66b9adf9cb47fae5e1a6a5846b0c0bd84c18743d1d1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:935f5e97-bb4c-6b37-0863-f6c275f72bdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_one_lt_natAbs_cyclotomic_eval {n : ℕ} {q : ℕ} (hn' : 1 < n) (hq : q ≠ 1) :
    q - 1 < ((cyclotomic n ℤ).eval ↑q).natAbs :=
  calc
    q - 1 ≤ (q - 1) ^ totient n := Nat.le_self_pow (Nat.totient_pos <| pos_of_gt hn').ne' _
    _ < ((cyclotomic n ℤ).eval ↑q).natAbs := sub_one_pow_totient_lt_natAbs_cyclotomic_eval hn' hq
#align polynomial.sub_one_lt_nat_abs_cyclotomic_eval Polynomial.sub_one_lt_natAbs_cyclotomic_eval

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ca71a80e702377fbfb69a851150ab4857ffcb82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
