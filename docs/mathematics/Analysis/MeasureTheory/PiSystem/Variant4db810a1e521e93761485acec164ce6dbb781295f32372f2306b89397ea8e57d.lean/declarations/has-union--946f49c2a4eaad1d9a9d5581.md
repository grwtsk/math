# has_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb23303e80d3ad7be2580e2ccaad1e06f60fb32e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 538,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4db810a1e521e93761485acec164ce6dbb781295f32372f2306b89397ea8e57d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9005c3f-2ac4-3519-d097-af93d9cbf5e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63494669-0193-1fa9-c01c-e56a7ce156a0",
  "kind": "theorem",
  "lexical_name": "has_union",
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
  "slug": "has-union--946f49c2a4eaad1d9a9d5581",
  "source": {
    "blob": "cb23303e80d3ad7be2580e2ccaad1e06f60fb32e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 538,
    "path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variant4db810a1e521e93761485acec164ce6dbb781295f32372f2306b89397ea8e57d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:946f49c2a4eaad1d9a9d55812b187c3c2389770f604b95afc66ca2c9c25bc4d7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PiSystem/Variant4db810a1e521e93761485acec164ce6dbb781295f32372f2306b89397ea8e57d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63494669-0193-1fa9-c01c-e56a7ce156a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_union {s₁ s₂ : Set α} (h₁ : d.Has s₁) (h₂ : d.Has s₂) (h : Disjoint s₁ s₂) :
    d.Has (s₁ ∪ s₂) := by
  rw [union_eq_iUnion]
  exact d.has_iUnion (pairwise_disjoint_on_bool.2 h) (Bool.forall_bool.2 ⟨h₂, h₁⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PiSystem/Variant4db810a1e521e93761485acec164ce6dbb781295f32372f2306b89397ea8e57d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PiSystem/Variant4db810a1e521e93761485acec164ce6dbb781295f32372f2306b89397ea8e57d.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb23303e80d3ad7be2580e2ccaad1e06f60fb32e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
