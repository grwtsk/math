# Associated.of_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bc30339742b7c6b3c6314ca748b33a64f5a31c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 309,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/7096fd917531b51e4b458ed1a4bcae001c345f65b67d4bae7476aff480787a9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31058ed7-4588-4e4a-4b32-95d32701a5e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0a13b68-9457-1fab-4b8d-70f32b11ead1",
  "kind": "theorem",
  "lexical_name": "Associated.of_mul_left",
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
  "slug": "associated-of-mul-left--256d6f4c4fac61997514589e",
  "source": {
    "blob": "8bc30339742b7c6b3c6314ca748b33a64f5a31c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 309,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variant7096fd917531b51e4b458ed1a4bcae001c345f65b67d4bae7476aff480787a9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:256d6f4c4fac61997514589e3f0cac92dabe043862b3417104fcbe88586107b6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variant7096fd917531b51e4b458ed1a4bcae001c345f65b67d4bae7476aff480787a9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0a13b68-9457-1fab-4b8d-70f32b11ead1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Associated.of_mul_left [CancelCommMonoidWithZero M] {a b c d : M} (h : a * b ~ᵤ c * d)
    (h₁ : a ~ᵤ c) (ha : a ≠ 0) : b ~ᵤ d :=
  let ⟨u, hu⟩ := h
  let ⟨v, hv⟩ := Associated.symm h₁
  ⟨u * (v : Mˣ),
    mul_left_cancel₀ ha
      (by
        rw [← hv, mul_assoc c (v : M) d, mul_left_comm c, ← hu]
        simp [hv.symm, mul_assoc, mul_comm, mul_left_comm])⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variant7096fd917531b51e4b458ed1a4bcae001c345f65b67d4bae7476aff480787a9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variant7096fd917531b51e4b458ed1a4bcae001c345f65b67d4bae7476aff480787a9b.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bc30339742b7c6b3c6314ca748b33a64f5a31c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
