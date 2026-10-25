# updateRow_zero_mul_updateCol_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd5c9ff41448c5b1dc3b92f8f4141c90c94d0f67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20de87505af57a165222982e2c185a430c3e6a545c4a127d51cd3dc9b42bc73a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ac78eb7-7d7a-0f27-3ffc-94ee0012fc97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63aecfb0-49ce-69d0-690a-81e322717585",
  "kind": "theorem",
  "lexical_name": "updateRow_zero_mul_updateCol_zero",
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
  "slug": "updaterow-zero-mul-updatecol-zero--f1738b7be9d0b78d59839d85",
  "source": {
    "blob": "bd5c9ff41448c5b1dc3b92f8f4141c90c94d0f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 484,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variant20de87505af57a165222982e2c185a430c3e6a545c4a127d51cd3dc9b42bc73a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1738b7be9d0b78d59839d8519027a60854ea3f063faa3bf2a267a2eab5cffa5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variant20de87505af57a165222982e2c185a430c3e6a545c4a127d51cd3dc9b42bc73a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63aecfb0-49ce-69d0-690a-81e322717585`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem updateRow_zero_mul_updateCol_zero
    [DecidableEq l] [DecidableEq n] [Fintype m] [NonUnitalNonAssocSemiring α]
    (i : l) (r : m → α) (j : n) (c : m → α):
    (0 : Matrix l m α).updateRow i r * (0 : Matrix m n α).updateCol j c = single i j (r ⬝ᵥ c) := by
  rw [updateRow_mul, vecMul_updateCol, mul_updateCol, single_eq_of_single_single, Matrix.zero_mul,
    vecMul_zero, zero_mulVec, updateCol_zero_zero, updateRow, ← Pi.single, ← Pi.single]

end mul

end Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variant20de87505af57a165222982e2c185a430c3e6a545c4a127d51cd3dc9b42bc73a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variant20de87505af57a165222982e2c185a430c3e6a545c4a127d51cd3dc9b42bc73a.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd5c9ff41448c5b1dc3b92f8f4141c90c94d0f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
