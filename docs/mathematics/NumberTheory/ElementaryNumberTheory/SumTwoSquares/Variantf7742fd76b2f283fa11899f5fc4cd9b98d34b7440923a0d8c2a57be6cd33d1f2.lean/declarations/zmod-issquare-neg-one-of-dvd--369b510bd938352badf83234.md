# ZMod.isSquare_neg_one_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a88c53e302d526422d755e1ac3cb350e6b67047",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8da3513e-1a56-7b78-9e5a-b6d4c7de02d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e99dc0d-a4fa-02a3-337b-cb27cc11ac4e",
  "kind": "theorem",
  "lexical_name": "ZMod.isSquare_neg_one_of_dvd",
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
  "slug": "zmod-issquare-neg-one-of-dvd--369b510bd938352badf83234",
  "source": {
    "blob": "3a88c53e302d526422d755e1ac3cb350e6b67047",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 72,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:369b510bd938352badf83234e5034766b7a390b5309a51962505f00cda86c2f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e99dc0d-a4fa-02a3-337b-cb27cc11ac4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZMod.isSquare_neg_one_of_dvd {m n : ℕ} (hd : m ∣ n) (hs : IsSquare (-1 : ZMod n)) :
    IsSquare (-1 : ZMod m) := by
  let f : ZMod n →+* ZMod m := ZMod.castHom hd _
  rw [← RingHom.map_one f, ← RingHom.map_neg]
  exact hs.map f

/-- If `-1` is a square modulo coprime natural numbers `m` and `n`, then `-1` is also
a square modulo `m*n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a88c53e302d526422d755e1ac3cb350e6b67047` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
