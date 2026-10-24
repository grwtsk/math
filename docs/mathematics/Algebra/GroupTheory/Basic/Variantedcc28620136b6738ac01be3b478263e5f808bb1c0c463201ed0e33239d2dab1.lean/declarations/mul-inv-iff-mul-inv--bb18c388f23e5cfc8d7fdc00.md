# mul_inv_iff_mul_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f3bf1be316a2ff1e99a6172560489dfa739fbb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 792,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac024f73-7710-97fc-30f5-62963b71acc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a334c096-920f-0dd9-dfd3-ca0170e1d4c6",
  "kind": "lemma",
  "lexical_name": "mul_inv_iff_mul_inv",
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
  "slug": "mul-inv-iff-mul-inv--bb18c388f23e5cfc8d7fdc00",
  "source": {
    "blob": "6f3bf1be316a2ff1e99a6172560489dfa739fbb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 803,
    "line": 792,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb18c388f23e5cfc8d7fdc008511cac329329cb5d7f7920080ea76898b2c9fd0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a334c096-920f-0dd9-dfd3-ca0170e1d4c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 792–803.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_inv_iff_mul_inv {α β γ : Type} [Group α] [MyRing β] [MyRing γ] (a : α) (b : β) (c : γ) :
    a * a⁻¹ = 1 ↔ b * b⁻¹ = 1 ∨ c * c⁻¹ = 1 := by
  simp

/--
info: add_neg_iff_mul_inv {α β γ : Type} [AddGroup α] [MyRing β] [MyRing γ] (a : α) (b : β) (c : γ) :
  a + -a = 0 ↔ b * b⁻¹ = 1 ∨ c * c⁻¹ = 1
-/
#guard_msgs in
#check add_neg_iff_mul_inv

@[to_additive (dont_translate := β) add_neg_iff_mul_inv]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean#L792).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f3bf1be316a2ff1e99a6172560489dfa739fbb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
