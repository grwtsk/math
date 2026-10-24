# actual_localized_product_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09af7426b7522213644bfe7a8667fe92e4b50184",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f82baa84-598a-7393-ea18-625d0623fa2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea8ca163-5194-a883-545f-8e526b4903d2",
  "kind": "theorem",
  "lexical_name": "actual_localized_product_eq",
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
  "slug": "actual-localized-product-eq--c22ef293c3695463834eebb0",
  "source": {
    "blob": "09af7426b7522213644bfe7a8667fe92e4b50184",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variant47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c22ef293c3695463834eebb0a5582c74af612ea643417c8b45ee894f4724edf9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variant47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea8ca163-5194-a883-545f-8e526b4903d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_localized_product_eq (A : ℝ) (hA : 1 ≤ A) (x : ℝ) :
    localizedMangoldtProfile A x * localizedCenteredMobiusProfile A x =
      mangoldtForwardProfile A x * centeredMobiusReflectedProfile A x :=
  localized_product_eq (by linarith : 0 < A) (Nat.succ_pos _) _ _ _ _
    (fun _ hm ↦ longInventory_ge_cutoff_succ A hm)
    (fun _ hn ↦ longInventory_ge_cutoff_succ A hn) x

/-- The literal global interaction equals its set integral over the exact overlap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variant47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variant47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09af7426b7522213644bfe7a8667fe92e4b50184` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
