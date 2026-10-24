# xgcdAux_P

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b4924e9-b3c7-9a14-6e83-4807a2d38081",
  "kind": "theorem",
  "lexical_name": "xgcdAux_P",
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
  "slug": "xgcdaux-p--d1475babad7cb2c97cf92414",
  "source": {
    "blob": "3c7494905d6e18db54c4226491e8f402297ece2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 144,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variantc235763379c1367cfb3f48953d053c3562968ee70a49627245a3212b16022e18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1475babad7cb2c97cf924148f9d18393520ee09e69e73eb574ea7bc6b9e985f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GCD/Variantc235763379c1367cfb3f48953d053c3562968ee70a49627245a3212b16022e18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b4924e9-b3c7-9a14-6e83-4807a2d38081`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xgcdAux_P {r r'} :
    ∀ {s t s' t'}, P x y (r, s, t) → P x y (r', s', t') → P x y (xgcdAux r s t r' s' t') := by
  induction r, r' using gcd.induction with
  | H0 => simp
  | H1 a b h IH =>
    intro s t s' t' p p'
    rw [xgcdAux_rec h]; refine' IH _ p; dsimp [P] at *
    rw [Int.emod_def]; generalize (b / a : ℤ) = k
    rw [p, p', mul_sub, sub_add_eq_add_sub, mul_sub, add_mul, mul_comm k t, mul_comm k s,
      ← mul_assoc, ← mul_assoc, add_comm (x * s * k), ← add_sub_assoc, sub_sub]
set_option linter.uppercaseLean3 false in
#align nat.xgcd_aux_P Nat.xgcdAux_P

/-- **Bézout's lemma**: given `x y : ℕ`, `gcd x y = x * a + y * b`, where `a = gcd_a x y` and
`b = gcd_b x y` are computed by the extended Euclidean algorithm.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GCD/Variantc235763379c1367cfb3f48953d053c3562968ee70a49627245a3212b16022e18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variantc235763379c1367cfb3f48953d053c3562968ee70a49627245a3212b16022e18.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c7494905d6e18db54c4226491e8f402297ece2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
