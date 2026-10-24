# prime_dvd_of_eq_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1a64044be2df5d77f50e06e17a0992722ec6ae6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:144a4ccd-92a1-3fd5-5053-edb29dc8cf21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0918fefe-b3b8-e710-eef9-c9d1bac63e10",
  "kind": "theorem",
  "lexical_name": "prime_dvd_of_eq_neg_one",
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
  "slug": "prime-dvd-of-eq-neg-one--0fc9666dfe4852e29f9121ba",
  "source": {
    "blob": "a1a64044be2df5d77f50e06e17a0992722ec6ae6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 268,
    "path": "GRWTSK/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fc9666dfe4852e29f9121ba6ae9de28fd3d61895fb2f9ad0d11f3518b265a38",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0918fefe-b3b8-e710-eef9-c9d1bac63e10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_dvd_of_eq_neg_one {p : ℕ} [Fact p.Prime] {a : ℤ} (h : legendreSym p a = -1) {x y : ℤ}
    (hxy : (p : ℤ) ∣ x ^ 2 - a * y ^ 2 ) : ↑p ∣ x ∧ ↑p ∣ y := by
  simp_rw [← ZMod.int_cast_zmod_eq_zero_iff_dvd] at hxy ⊢
  push_cast at hxy
  exact eq_zero_mod_of_eq_neg_one h hxy
#align legendre_sym.prime_dvd_of_eq_neg_one legendreSym.prime_dvd_of_eq_neg_one

end legendreSym

end QuadraticForm

section Values

/-!
### The value of the Legendre symbol at `-1`

See `jacobiSym.at_neg_one` for the corresponding statement for the Jacobi symbol.
-/


variable {p : ℕ} [Fact p.Prime]

open ZMod

/-- `legendreSym p (-1)` is given by `χ₄ p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1a64044be2df5d77f50e06e17a0992722ec6ae6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
