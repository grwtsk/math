# eq_zero_or_eq_zero_of_mul_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9af0a7d1-978a-ece7-adb2-6793ddc2be26",
  "kind": "theorem",
  "lexical_name": "eq_zero_or_eq_zero_of_mul_eq_zero",
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
  "slug": "eq-zero-or-eq-zero-of-mul-eq-zero--5f3c941e08b38b2449ab381c",
  "source": {
    "blob": "c0a5bdb580d82bb290f3cfc0d4850611845c94cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 992,
    "line": 963,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant1adf26c84c1025a6de6a9c9f99d95e43ced1f5ce2629b93e55bd0349e25229f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f3c941e08b38b2449ab381ccc9ab4c2d766bf34ea0c078dce0d896e32033542",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant1adf26c84c1025a6de6a9c9f99d95e43ced1f5ce2629b93e55bd0349e25229f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9af0a7d1-978a-ece7-adb2-6793ddc2be26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 963–992.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem eq_zero_or_eq_zero_of_mul_eq_zero : ∀ {a b : ℤ√d}, a * b = 0 → a = 0 ∨ b = 0
  | ⟨x, y⟩, ⟨z, w⟩, h => by
    injection h with h1 h2
    have h1 : x * z = -(d * y * w) := eq_neg_of_add_eq_zero_left h1
    have h2 : x * w = -(y * z) := eq_neg_of_add_eq_zero_left h2
    have fin : x * x = d * y * y → (⟨x, y⟩ : ℤ√d) = 0 := fun e =>
      match x, y, divides_sq_eq_zero_z e with
      | _, _, ⟨rfl, rfl⟩ => rfl
    exact
      if z0 : z = 0 then
        if w0 : w = 0 then
          Or.inr
            (match z, w, z0, w0 with
            | _, _, rfl, rfl => rfl)
        else
          Or.inl <|
            fin <|
              mul_right_cancel₀ w0 <|
                calc
                  x * x * w = -y * (x * z) := by simp [h2, mul_assoc, mul_left_comm]
                  _ = d * y * y * w := by simp [h1, mul_assoc, mul_left_comm]
      else
        Or.inl <|
          fin <|
            mul_right_cancel₀ z0 <|
              calc
                x * x * z = d * -y * (x * w) := by simp [h1, mul_assoc, mul_left_comm]
                _ = d * y * y * z := by simp [h2, mul_assoc, mul_left_comm]
#align zsqrtd.eq_zero_or_eq_zero_of_mul_eq_zero Zsqrtd.eq_zero_or_eq_zero_of_mul_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant1adf26c84c1025a6de6a9c9f99d95e43ced1f5ce2629b93e55bd0349e25229f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant1adf26c84c1025a6de6a9c9f99d95e43ced1f5ce2629b93e55bd0349e25229f9.lean#L963).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0a5bdb580d82bb290f3cfc0d4850611845c94cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
