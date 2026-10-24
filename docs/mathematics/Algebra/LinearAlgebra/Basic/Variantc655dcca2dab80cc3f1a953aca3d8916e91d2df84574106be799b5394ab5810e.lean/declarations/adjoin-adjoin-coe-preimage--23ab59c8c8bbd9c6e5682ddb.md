# adjoin_adjoin_coe_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7c8fc3e12a810bf72411f6558cbfbd72c99d13c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ddf87334-b4b0-e953-9fee-c12d817d9d35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5269df43-a506-c5d2-7b57-7a1c5f6f2d76",
  "kind": "theorem",
  "lexical_name": "adjoin_adjoin_coe_preimage",
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
  "slug": "adjoin-adjoin-coe-preimage--23ab59c8c8bbd9c6e5682ddb",
  "source": {
    "blob": "d7c8fc3e12a810bf72411f6558cbfbd72c99d13c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 131,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23ab59c8c8bbd9c6e5682ddbb61397e9e09dd37e82377186eefb9aa9dd84bfe3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5269df43-a506-c5d2-7b57-7a1c5f6f2d76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_adjoin_coe_preimage {s : Set A} : adjoin R (((↑) : adjoin R s → A) ⁻¹' s) = ⊤ := by
  refine'
    eq_top_iff.2 fun x =>
      -- porting note: Lean could no longer infer the motive
      adjoin_induction' (p := fun y => y ∈ adjoin R (((↑) : adjoin R s → A) ⁻¹' s))
      (fun a ha => _) (fun r => _) (fun _ _ => _) (fun _ _ => _) x
  · exact subset_adjoin ha
  · exact Subalgebra.algebraMap_mem _ r
  · exact Subalgebra.add_mem _
  · exact Subalgebra.mul_mem _
#align algebra.adjoin_adjoin_coe_preimage Algebra.adjoin_adjoin_coe_preimage

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7c8fc3e12a810bf72411f6558cbfbd72c99d13c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
