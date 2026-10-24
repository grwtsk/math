# IsPrimitive.zmod_char_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d807b175c16a3f14dd9271058900c8a2414e79b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16a6f67e-1dd3-5b2e-b0d9-b54d1bfceee7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7023112d-6a52-a0ba-9373-581458c0d183",
  "kind": "theorem",
  "lexical_name": "IsPrimitive.zmod_char_eq_one_iff",
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
  "slug": "isprimitive-zmod-char-eq-one-iff--6d1bb94f4bc249402f52b85c",
  "source": {
    "blob": "d807b175c16a3f14dd9271058900c8a2414e79b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 350,
    "path": "GRWTSK/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d1bb94f4bc249402f52b85c6ec1455f74a648a417d36990b11799bbcdf47121",
  "verification": {
    "reference": "docs/verification/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7023112d-6a52-a0ba-9373-581458c0d183`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrimitive.zmod_char_eq_one_iff (n : ℕ+) {ψ : AddChar (ZMod n) C} (hψ : IsPrimitive ψ)
    (a : ZMod n) : ψ a = 1 ↔ a = 0 := by
  refine' ⟨fun h => not_imp_comm.mp (hψ a) _, fun ha => by rw [ha, map_zero_one]⟩
  rw [zmod_char_isNontrivial_iff n (mulShift ψ a), mulShift_apply, mul_one, h, Classical.not_not]
#align add_char.is_primitive.zmod_char_eq_one_iff AddChar.IsPrimitive.zmod_char_eq_one_iff

/-- The converse: if the additive character takes the value `1` only at `0`,
then it is primitive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d807b175c16a3f14dd9271058900c8a2414e79b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
