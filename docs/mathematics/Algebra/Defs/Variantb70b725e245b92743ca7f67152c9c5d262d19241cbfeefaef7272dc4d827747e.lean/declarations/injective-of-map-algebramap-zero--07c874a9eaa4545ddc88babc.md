# injective_of_map_algebraMap_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ccd34ed3dcc68f9f1bb249b46065db3a3e91f31a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 898,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b70b725e245b92743ca7f67152c9c5d262d19241cbfeefaef7272dc4d827747e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24b51fd2-0866-7eae-fd85-97165b04e78b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e696b0e2-b2eb-b8f4-0570-c911b5e3a790",
  "kind": "lemma",
  "lexical_name": "injective_of_map_algebraMap_zero",
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
  "slug": "injective-of-map-algebramap-zero--07c874a9eaa4545ddc88babc",
  "source": {
    "blob": "ccd34ed3dcc68f9f1bb249b46065db3a3e91f31a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 906,
    "line": 898,
    "path": "GRWTSK/Algebra/Defs/Variantb70b725e245b92743ca7f67152c9c5d262d19241cbfeefaef7272dc4d827747e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07c874a9eaa4545ddc88babc60750bb824a304ad1d3fb0506c6302dec2d611c3",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantb70b725e245b92743ca7f67152c9c5d262d19241cbfeefaef7272dc4d827747e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e696b0e2-b2eb-b8f4-0570-c911b5e3a790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 898–906.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injective_of_map_algebraMap_zero {T} [CommRing T] (f : S →+* T)
    (h : ∀ x, f (algebraMap R S x) = 0 → algebraMap R S x = 0) :
    Function.Injective f := by
  rw [IsLocalization.injective_iff_map_algebraMap_eq M]
  refine fun x y ↦ ⟨fun hz ↦ hz ▸ rfl, fun hz ↦ ?_⟩
  rw [← sub_eq_zero, ← map_sub, ← map_sub] at hz
  apply h at hz
  rwa [map_sub, sub_eq_zero] at hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantb70b725e245b92743ca7f67152c9c5d262d19241cbfeefaef7272dc4d827747e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantb70b725e245b92743ca7f67152c9c5d262d19241cbfeefaef7272dc4d827747e.lean#L898).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccd34ed3dcc68f9f1bb249b46065db3a3e91f31a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
