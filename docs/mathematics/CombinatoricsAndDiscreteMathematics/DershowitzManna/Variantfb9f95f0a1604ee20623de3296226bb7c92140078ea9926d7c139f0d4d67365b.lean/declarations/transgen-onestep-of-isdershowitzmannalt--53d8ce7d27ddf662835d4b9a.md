# transGen_oneStep_of_isDershowitzMannaLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d3ce96b10551666f81cc00b755604a7e4d9bf0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b4d9ea2-f9db-7281-2dd8-5d2dfa761b96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1de82338-6fde-94ea-9387-d91121acc9b3",
  "kind": "lemma",
  "lexical_name": "transGen_oneStep_of_isDershowitzMannaLT",
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
  "slug": "transgen-onestep-of-isdershowitzmannalt--53d8ce7d27ddf662835d4b9a",
  "source": {
    "blob": "6d3ce96b10551666f81cc00b755604a7e4d9bf0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 134,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53d8ce7d27ddf662835d4b9afc64c263eab2fd3a825a57dbd3f75602c1085996",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1de82338-6fde-94ea-9387-d91121acc9b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma transGen_oneStep_of_isDershowitzMannaLT :
    IsDershowitzMannaLT M N → TransGen OneStep M N := by
  classical
  rintro ⟨X, Y, Z, hZ, hM, hN, hYZ⟩
  induction' Z using Multiset.induction_on with z Z ih generalizing X Y M N
  · simp at hZ
  obtain rfl | hZ := eq_or_ne Z 0
  · exact .single ⟨X, Y, z, hM, hN, by simpa using hYZ⟩
  let Y' : Multiset α := Y.filter (· < z)
  refine .tail (b := X + Y' + Z) (ih (X + Y') (Y - Y') hZ ?_ rfl fun y hy ↦ ?_) <|
    ⟨X + Z, Y', z, add_right_comm .., by simp [hN, add_comm (_ + _)], by simp [Y']⟩
  · rw [add_add_tsub_cancel (filter_le ..), hM]
  · simp only [sub_filter_eq_filter_not, mem_filter, Y'] at hy
    simpa [hy.2] using hYZ y (by aesop)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d3ce96b10551666f81cc00b755604a7e4d9bf0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
