# pow_add_pow_eq_zero_iff_of_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d302bbd3-8f11-2631-729b-31186a6456fd",
  "kind": "lemma",
  "lexical_name": "pow_add_pow_eq_zero_iff_of_even",
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
  "slug": "pow-add-pow-eq-zero-iff-of-even--ef093ddb172265a2f9f40468",
  "source": {
    "blob": "b5a5342838cb2dffa865e76d24ed5f5c1cf2a7f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 96,
    "path": "GRWTSK/Algebra/Basic/Variantf1e5e2e33938ffbb7efb23b420cc7cc9a201b402a69d4d2118e2be6fd39c775f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef093ddb172265a2f9f40468623557c4fadda37cc9f0b387b06c2db3dcdec075",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf1e5e2e33938ffbb7efb23b420cc7cc9a201b402a69d4d2118e2be6fd39c775f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d302bbd3-8f11-2631-729b-31186a6456fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_add_pow_eq_zero_iff_of_even [NoZeroDivisors R]
    {n : ℕ} (hn : n ≠ 0) (hn' : Even n) (x y : R) :
    x ^ n + y ^ n = 0 ↔ x = 0 ∧ y = 0 := by
  obtain ⟨m, rfl⟩ := hn'
  simp only [pow_add]
  grind [mul_self_add_mul_self_eq_zero, pow_eq_zero_iff]

end IsOrderedRing

variable [Semiring R] [LinearOrder R] [IsStrictOrderedRing R] {a b : R} {m n : ℕ}

/-- A function `f : α → R` is nonarchimedean if it satisfies the ultrametric inequality
  `f (a + b) ≤ max (f a) (f b)` for all `a b : α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf1e5e2e33938ffbb7efb23b420cc7cc9a201b402a69d4d2118e2be6fd39c775f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf1e5e2e33938ffbb7efb23b420cc7cc9a201b402a69d4d2118e2be6fd39c775f.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5a5342838cb2dffa865e76d24ed5f5c1cf2a7f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
