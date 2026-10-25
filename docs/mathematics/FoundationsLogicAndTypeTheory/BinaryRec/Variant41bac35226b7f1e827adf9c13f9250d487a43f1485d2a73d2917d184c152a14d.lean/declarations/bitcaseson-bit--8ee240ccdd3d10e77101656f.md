# bitCasesOn_bit

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
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac905b73-8b29-124f-651d-1e637ec19739",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14b65dc6-ed84-6362-8458-0d9aa6cf4478",
  "kind": "theorem",
  "lexical_name": "bitCasesOn_bit",
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
  "slug": "bitcaseson-bit--8ee240ccdd3d10e77101656f",
  "source": {
    "blob": "e69b5c2b242f6927ca159556b7638166aba6d34b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ee240ccdd3d10e77101656f0f84c4c2718289a39df3d20133e25b99d494b8c1",
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

Occurrence: `result:14b65dc6-ed84-6362-8458-0d9aa6cf4478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitCasesOn_bit (h : ∀ b n, motive (bit b n)) (b : Bool) (n : Nat) :
    bitCasesOn (bit b n) h = h b n := by
  change congrArg motive (bit b n).bit_testBit_zero_shiftRight_one ▸ h _ _ = h b n
  generalize congrArg motive (bit b n).bit_testBit_zero_shiftRight_one = e; revert e
  rw [testBit_bit_zero, bit_shiftRight_one]
  intros; rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69b5c2b242f6927ca159556b7638166aba6d34b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
