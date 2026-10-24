# eval_divByMonic_pow_rootMultiplicity_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53f6de398a3e9ea7c217e175c8707ce2615f4b91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 670,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/755f958b2ae34a593310e6cc3d3316d48258a8cfb51bb58c0ffb58a2e4892849.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:990384ec-b1d3-cf27-2957-4d947416da91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32d2983b-e326-36cd-857f-4a5a7b43fc10",
  "kind": "theorem",
  "lexical_name": "eval_divByMonic_pow_rootMultiplicity_ne_zero",
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
  "slug": "eval-divbymonic-pow-rootmultiplicity-ne-zero--b96baf3035321621b63e812a",
  "source": {
    "blob": "53f6de398a3e9ea7c217e175c8707ce2615f4b91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 670,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Div/Variant755f958b2ae34a593310e6cc3d3316d48258a8cfb51bb58c0ffb58a2e4892849.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b96baf3035321621b63e812aa8ac04e07804c50a8c058190fd560395ac9d6775",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Div/Variant755f958b2ae34a593310e6cc3d3316d48258a8cfb51bb58c0ffb58a2e4892849.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32d2983b-e326-36cd-857f-4a5a7b43fc10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 670–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_divByMonic_pow_rootMultiplicity_ne_zero {p : R[X]} (a : R) (hp : p ≠ 0) :
    eval a (p /ₘ (X - C a) ^ rootMultiplicity a p) ≠ 0 := by
  classical
  have : Nontrivial R := Nontrivial.of_polynomial_ne hp
  rw [Ne, ← IsRoot, ← dvd_iff_isRoot]
  rintro ⟨q, hq⟩
  have := pow_mul_divByMonic_rootMultiplicity_eq p a
  rw [hq, ← mul_assoc, ← pow_succ, rootMultiplicity_eq_multiplicity, ite_eq_right hp] at this
  exact
    (finiteMultiplicity_X_sub_C a hp).not_pow_dvd_of_multiplicity_lt
      (Nat.lt_succ_self _) (dvd_of_mul_right_eq _ this)

/-- See `Polynomial.self_mul_modByMonic` for the other multiplication order. This version, unlike
that one, requires commutativity. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Div/Variant755f958b2ae34a593310e6cc3d3316d48258a8cfb51bb58c0ffb58a2e4892849.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Div/Variant755f958b2ae34a593310e6cc3d3316d48258a8cfb51bb58c0ffb58a2e4892849.lean#L670).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f6de398a3e9ea7c217e175c8707ce2615f4b91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
