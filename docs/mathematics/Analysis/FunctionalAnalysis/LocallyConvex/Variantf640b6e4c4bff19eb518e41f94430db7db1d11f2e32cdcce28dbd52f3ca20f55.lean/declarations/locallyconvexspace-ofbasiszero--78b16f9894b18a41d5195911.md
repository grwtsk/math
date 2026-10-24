# LocallyConvexSpace.ofBasisZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ca4ca0adf7dcfdd8baed1c0decdce193a11d196",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cc39b59-11e9-dd59-2f1f-7fe4c622ea5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f28ba0c-2cf4-fcd1-c327-f4d3aa3f2297",
  "kind": "theorem",
  "lexical_name": "LocallyConvexSpace.ofBasisZero",
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
  "slug": "locallyconvexspace-ofbasiszero--78b16f9894b18a41d5195911",
  "source": {
    "blob": "4ca4ca0adf7dcfdd8baed1c0decdce193a11d196",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 81,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78b16f9894b18a41d51959111a06673c0d2dc26be5934a1672abcb055b03b031",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f28ba0c-2cf4-fcd1-c327-f4d3aa3f2297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LocallyConvexSpace.ofBasisZero {ι : Type*} (b : ι → Set E) (p : ι → Prop)
    (hbasis : (𝓝 0).HasBasis p b) (hconvex : ∀ i, p i → Convex 𝕜 (b i)) :
    LocallyConvexSpace 𝕜 E := by
  refine LocallyConvexSpace.ofBases 𝕜 E (fun (x : E) (i : ι) => (x + ·) '' b i) (fun _ => p)
    (fun x => ?_) fun x i hi => (hconvex i hi).translate x
  rw [← map_add_left_nhds_zero]
  exact hbasis.map _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ca4ca0adf7dcfdd8baed1c0decdce193a11d196` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
