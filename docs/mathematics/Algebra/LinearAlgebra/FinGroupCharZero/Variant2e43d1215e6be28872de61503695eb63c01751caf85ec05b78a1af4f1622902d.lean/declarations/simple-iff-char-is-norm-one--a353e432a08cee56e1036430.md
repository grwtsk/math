# simple_iff_char_is_norm_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e64518fcf1a9b7390aa94ea1f3ca9fd2c2963f92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e43d1215e6be28872de61503695eb63c01751caf85ec05b78a1af4f1622902d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9067f3a1-1c83-f5eb-f763-5dc2daa7d024",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3bc857cf-0c20-ca63-8564-9321e8a64aca",
  "kind": "lemma",
  "lexical_name": "simple_iff_char_is_norm_one",
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
  "slug": "simple-iff-char-is-norm-one--a353e432a08cee56e1036430",
  "source": {
    "blob": "e64518fcf1a9b7390aa94ea1f3ca9fd2c2963f92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 120,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinGroupCharZero/Variant2e43d1215e6be28872de61503695eb63c01751caf85ec05b78a1af4f1622902d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a353e432a08cee56e1036430b7389da642be17676b92b0917b32e3cf078c2a2b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinGroupCharZero/Variant2e43d1215e6be28872de61503695eb63c01751caf85ec05b78a1af4f1622902d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bc857cf-0c20-ca63-8564-9321e8a64aca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma simple_iff_char_is_norm_one [CharZero k] [Fintype G] (V : FDRep k G) :
    Simple V ↔ ∑ g : G, V.character g * V.character g⁻¹ = Nat.card G := by
  have := invertibleOfNonzero (NeZero.ne (Nat.card G : k))
  constructor <;> intro h
  · symm; simpa [Nonempty.intro (Iso.refl V), inv_mul_eq_one₀] using char_orthonormal V V
  · have eq := V.scalar_product_char_eq_finrank_equivariant V
    rw [h, inv_mul_cancel_of_invertible] at eq
    rw [simple_iff_end_is_rank_one, ← Nat.cast_inj (R := k), ← eq, Nat.cast_one]

end FDRep
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinGroupCharZero/Variant2e43d1215e6be28872de61503695eb63c01751caf85ec05b78a1af4f1622902d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinGroupCharZero/Variant2e43d1215e6be28872de61503695eb63c01751caf85ec05b78a1af4f1622902d.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e64518fcf1a9b7390aa94ea1f3ca9fd2c2963f92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
