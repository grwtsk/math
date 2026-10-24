# pow_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1af0ac7a-5fec-53ab-2f7e-ef38354fa9a1",
  "kind": "theorem",
  "lexical_name": "pow_right",
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
  "slug": "pow-right--0e1488aabdce71f2e986d0aa",
  "source": {
    "blob": "f1f830ec89cc5982a95f8e9f5ab1cf994e621908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 215,
    "path": "GRWTSK/NumberTheory/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e1488aabdce71f2e986d0aa62c385858bda46e3886c571b1ae85c53551e9aea",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1af0ac7a-5fec-53ab-2f7e-ef38354fa9a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_right (a : ℤ) (b e : ℕ) : J(a | b ^ e) = J(a | b) ^ e := by
  induction' e with e ih
  · rw [Nat.pow_zero, _root_.pow_zero, one_right]
  · cases' eq_zero_or_neZero b with hb
    · rw [hb, zero_pow (succ_pos e), zero_right, one_pow]
    · rw [_root_.pow_succ, _root_.pow_succ, mul_right, ih]
#align jacobi_sym.pow_right jacobiSym.pow_right

/-- The square of `J(a | b)` is `1` when `a` and `b` are coprime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1f830ec89cc5982a95f8e9f5ab1cf994e621908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
