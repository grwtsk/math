# quadraticChar_odd_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bddca2c-219d-445c-9808-46bed1e3cbbf",
  "kind": "theorem",
  "lexical_name": "quadraticChar_odd_prime",
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
  "slug": "quadraticchar-odd-prime--ea5eee3cbdf7ae009f4ff3c6",
  "source": {
    "blob": "e562ec12f3b7ee7cae7c24d0b5fda2ca8002bc73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 127,
    "path": "GRWTSK/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea5eee3cbdf7ae009f4ff3c622e79a325bfb153009d494683da90f38abdf563c",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bddca2c-219d-445c-9808-46bed1e3cbbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticChar_odd_prime [DecidableEq F] (hF : ringChar F ≠ 2) {p : ℕ} [Fact p.Prime]
    (hp₁ : p ≠ 2) (hp₂ : ringChar F ≠ p) :
    quadraticChar F p = quadraticChar (ZMod p) (χ₄ (Fintype.card F) * Fintype.card F) := by
  rw [← quadraticChar_neg_one hF]
  have h := quadraticChar_card_card hF (ne_of_eq_of_ne (ringChar_zmod_n p) hp₁)
    (ne_of_eq_of_ne (ringChar_zmod_n p) hp₂.symm)
  rwa [card p] at h
#align quadratic_char_odd_prime quadraticChar_odd_prime

/-- An odd prime `p` is a square in `F` iff the quadratic character of `ZMod p` does not
take the value `-1` on `χ₄#F * #F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e562ec12f3b7ee7cae7c24d0b5fda2ca8002bc73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
