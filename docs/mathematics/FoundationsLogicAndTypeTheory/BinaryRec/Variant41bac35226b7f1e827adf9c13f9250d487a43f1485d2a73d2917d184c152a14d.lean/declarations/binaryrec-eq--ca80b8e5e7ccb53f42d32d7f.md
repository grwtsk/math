# binaryRec_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e69b5c2b242f6927ca159556b7638166aba6d34b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1dbbf09-c74c-f811-1387-cec431d4ddfb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:610d8649-4fbc-d633-4ab3-8f5bd78dff6f",
  "kind": "theorem",
  "lexical_name": "binaryRec_eq",
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
  "slug": "binaryrec-eq--ca80b8e5e7ccb53f42d32d7f",
  "source": {
    "blob": "e69b5c2b242f6927ca159556b7638166aba6d34b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca80b8e5e7ccb53f42d32d7f5b677be8fa2da777428c12c9f167cd7fea255830",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:610d8649-4fbc-d633-4ab3-8f5bd78dff6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binaryRec_eq {z : motive 0} {f : ∀ b n, motive n → motive (bit b n)}
    (b n) (h : f false 0 z = z ∨ (n = 0 → b = true)) :
    binaryRec z f (bit b n) = f b n (binaryRec z f n) := by
  by_cases h' : bit b n = 0
  case pos =>
    obtain ⟨rfl, rfl⟩ := bit_eq_zero_iff.mp h'
    simp only [Bool.false_eq_true, imp_false, not_true_eq_false, or_false] at h
    unfold binaryRec
    exact h.symm
  case neg =>
    rw [binaryRec, dif_neg h']
    change congrArg motive (bit b n).bit_testBit_zero_shiftRight_one ▸ f _ _ _ = _
    generalize congrArg motive (bit b n).bit_testBit_zero_shiftRight_one = e; revert e
    rw [testBit_bit_zero, bit_shiftRight_one]
    intros; rfl

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69b5c2b242f6927ca159556b7638166aba6d34b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
