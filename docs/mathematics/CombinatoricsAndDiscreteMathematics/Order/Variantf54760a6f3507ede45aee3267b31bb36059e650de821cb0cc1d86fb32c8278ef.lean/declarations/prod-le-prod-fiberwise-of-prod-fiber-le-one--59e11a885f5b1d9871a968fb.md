# prod_le_prod_fiberwise_of_prod_fiber_le_one'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "796887e96d72505541d41659daae1db19cc44dc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f54760a6f3507ede45aee3267b31bb36059e650de821cb0cc1d86fb32c8278ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cff33835-1841-8709-196c-60ea1bcff1e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5e10c9e-36f9-7b4a-03e0-08154f5ddf5b",
  "kind": "theorem",
  "lexical_name": "prod_le_prod_fiberwise_of_prod_fiber_le_one'",
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
  "slug": "prod-le-prod-fiberwise-of-prod-fiber-le-one--59e11a885f5b1d9871a968fb",
  "source": {
    "blob": "796887e96d72505541d41659daae1db19cc44dc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 250,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantf54760a6f3507ede45aee3267b31bb36059e650de821cb0cc1d86fb32c8278ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59e11a885f5b1d9871a968fb9af99ea3017d5a869e93ec7b4389e949cfd7889e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variantf54760a6f3507ede45aee3267b31bb36059e650de821cb0cc1d86fb32c8278ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5e10c9e-36f9-7b4a-03e0-08154f5ddf5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_le_prod_fiberwise_of_prod_fiber_le_one' {t : Finset ι'} {g : ι → ι'} {f : ι → N}
    (h : ∀ (y) (_ : y ∉ t), ∏ x in s.filter fun x ↦ g x = y, f x ≤ 1) :
    ∏ x in s, f x ≤ ∏ y in t, ∏ x in s.filter fun x ↦ g x = y, f x :=
  @prod_fiberwise_le_prod_of_one_le_prod_fiber' _ Nᵒᵈ _ _ _ _ _ _ _ h
#align finset.prod_le_prod_fiberwise_of_prod_fiber_le_one' Finset.prod_le_prod_fiberwise_of_prod_fiber_le_one'
#align finset.sum_le_sum_fiberwise_of_sum_fiber_nonpos Finset.sum_le_sum_fiberwise_of_sum_fiber_nonpos

end OrderedCommMonoid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantf54760a6f3507ede45aee3267b31bb36059e650de821cb0cc1d86fb32c8278ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantf54760a6f3507ede45aee3267b31bb36059e650de821cb0cc1d86fb32c8278ef.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `796887e96d72505541d41659daae1db19cc44dc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
