# code_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f4cdaf4796629e6c7e8fde4917c9375a81625a0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d3b10e2914b5222e19a05e4941e251fe4ce0a48609b0e7d3f825e7f2590fc84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9a0fad2-a54e-0714-17a2-73b0e53a4422",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9e4cce0-9610-c057-f6ab-c87fea891bc7",
  "kind": "theorem",
  "lexical_name": "code_add",
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
  "slug": "code-add--5ef03a972bc2399f93f31fbe",
  "source": {
    "blob": "f4cdaf4796629e6c7e8fde4917c9375a81625a0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variant1d3b10e2914b5222e19a05e4941e251fe4ce0a48609b0e7d3f825e7f2590fc84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ef03a972bc2399f93f31fbed54221c6b7683099140d533cc9bb4a1604b9a695",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variant1d3b10e2914b5222e19a05e4941e251fe4ce0a48609b0e7d3f825e7f2590fc84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9e4cce0-9610-c057-f6ab-c87fea891bc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem code_add
    (E : RowFieldEncoding F r)
    (x y : F) :
    E.code (x + y) = xorBits (E.code x) (E.code y) := by
  funext j
  change
    (BitMatrix.FiniteField.Encoding.code E (x + y)) 0 j =
      (BitMatrix.FiniteField.Encoding.code E x 0 j !=
        BitMatrix.FiniteField.Encoding.code E y 0 j)
  rw [BitMatrix.FiniteField.Encoding.code_add]
  rfl

end RowFieldEncoding

/-! ## Fixed-row matrices and field vectors -/

variable {F : Type u}
variable [Field F] [Fintype F] [Algebra BitMatrix.FiniteField.GF2 F]
variable {r k : Nat}

/-- Extract row `i` of a Boolean matrix as an `r`-bit vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variant1d3b10e2914b5222e19a05e4941e251fe4ce0a48609b0e7d3f825e7f2590fc84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variant1d3b10e2914b5222e19a05e4941e251fe4ce0a48609b0e7d3f825e7f2590fc84.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4cdaf4796629e6c7e8fde4917c9375a81625a0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
