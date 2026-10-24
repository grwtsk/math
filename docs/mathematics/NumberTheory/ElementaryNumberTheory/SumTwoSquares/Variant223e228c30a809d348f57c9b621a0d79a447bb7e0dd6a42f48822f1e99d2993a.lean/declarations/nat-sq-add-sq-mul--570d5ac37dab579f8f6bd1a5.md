# Nat.sq_add_sq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25df65f3-c5b2-d9ae-926e-6559ef1a46cd",
  "kind": "theorem",
  "lexical_name": "Nat.sq_add_sq_mul",
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
  "slug": "nat-sq-add-sq-mul--570d5ac37dab579f8f6bd1a5",
  "source": {
    "blob": "a00b526b78c60cabdec3570501b6aaf21f665caa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 63,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:570d5ac37dab579f8f6bd1a5bcf8d34bb5221161f8f09f1260780e0710687a20",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25df65f3-c5b2-d9ae-926e-6559ef1a46cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.sq_add_sq_mul {a b x y u v : ℕ} (ha : a = x ^ 2 + y ^ 2) (hb : b = u ^ 2 + v ^ 2) :
    ∃ r s : ℕ, a * b = r ^ 2 + s ^ 2 := by
  zify at ha hb ⊢
  obtain ⟨r, s, h⟩ := _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.NatPrimeSqAddSq.Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.sq_add_sq_mul ha hb
  refine' ⟨r.natAbs, s.natAbs, _⟩
  simpa only [Int.coe_natAbs, sq_abs]
#align nat.sq_add_sq_mul Nat.sq_add_sq_mul

end General

/-!
### Results on when -1 is a square modulo a natural number
-/


section NegOneSquare

-- This could be formulated for a general integer `a` in place of `-1`,
-- but it would not directly specialize to `-1`,
-- because `((-1 : ℤ) : ZMod n)` is not the same as `(-1 : ZMod n)`.
/-- If `-1` is a square modulo `n` and `m` divides `n`, then `-1` is also a square modulo `m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a00b526b78c60cabdec3570501b6aaf21f665caa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
