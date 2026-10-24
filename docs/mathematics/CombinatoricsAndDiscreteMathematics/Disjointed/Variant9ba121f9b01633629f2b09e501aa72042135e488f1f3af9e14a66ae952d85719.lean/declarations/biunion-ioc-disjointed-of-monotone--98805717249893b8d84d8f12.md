# biUnion_Ioc_disjointed_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "862c05aa0674700a18075613536b321147044892",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9ba121f9b01633629f2b09e501aa72042135e488f1f3af9e14a66ae952d85719.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91762248-dd6c-8dcd-19b5-7acb98252e76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:326576e0-11c7-49f4-69e7-7cfaeb2c97e1",
  "kind": "lemma",
  "lexical_name": "biUnion_Ioc_disjointed_of_monotone",
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
  "slug": "biunion-ioc-disjointed-of-monotone--98805717249893b8d84d8f12",
  "source": {
    "blob": "862c05aa0674700a18075613536b321147044892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 265,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant9ba121f9b01633629f2b09e501aa72042135e488f1f3af9e14a66ae952d85719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98805717249893b8d84d8f122a495e2dd957337d9c5f328c326584b77f36ea18",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Disjointed/Variant9ba121f9b01633629f2b09e501aa72042135e488f1f3af9e14a66ae952d85719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:326576e0-11c7-49f4-69e7-7cfaeb2c97e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma biUnion_Ioc_disjointed_of_monotone
    {α ι : Type*} [LinearOrder ι] [LocallyFiniteOrder ι] [OrderBot ι]
    {f : ι → Set α} (hf : Monotone f) {m n : ι} (hm : n ≤ m) :
    ⋃ i ∈ Finset.Ioc n m, disjointed f i = f m \ f n := by
  simp [← sup_Ioc_disjointed_of_monotone hf hm]

end LinearOrder

/-!
### Functions on an arbitrary fintype
-/

/-- For any finite family of elements `f : ι → α`, we can find a pairwise-disjoint family `g`
bounded above by `f` and having the same supremum. This is non-canonical, depending on an arbitrary
choice of ordering of `ι`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Disjointed/Variant9ba121f9b01633629f2b09e501aa72042135e488f1f3af9e14a66ae952d85719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant9ba121f9b01633629f2b09e501aa72042135e488f1f3af9e14a66ae952d85719.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `862c05aa0674700a18075613536b321147044892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
