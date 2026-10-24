# contMDiff_finprod_cond

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23ff5ed7b529def0dd6022e6f9b6ddeb3eae49f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 439,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:505a17b3-e2e2-2861-afc6-7fb68e5f7014",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cea2366-2cab-5d4c-7611-51cd55213b5b",
  "kind": "theorem",
  "lexical_name": "contMDiff_finprod_cond",
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
  "slug": "contmdiff-finprod-cond--b30c1fcbe95f4e3e558ce3d7",
  "source": {
    "blob": "23ff5ed7b529def0dd6022e6f9b6ddeb3eae49f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 439,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b30c1fcbe95f4e3e558ce3d73ac1fa2dea6e26850d6faee60505c67f358211ac",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cea2366-2cab-5d4c-7611-51cd55213b5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiff_finprod_cond (hc : ∀ i, p i → ContMDiff I' I n (f i))
    (hf : LocallyFinite fun i => mulSupport (f i)) :
    ContMDiff I' I n fun x => ∏ᶠ (i) (_ : p i), f i x := by
  simp only [← finprod_subtype_eq_finprod_cond]
  exact contMDiff_finprod (fun i => hc i i.2) (hf.comp_injective Subtype.coe_injective)

@[deprecated (since := "2024-11-21")] alias smoothAt_finprod := contMDiffAt_finprod
@[deprecated (since := "2024-11-21")] alias smoothAt_finsum := contMDiffAt_finsum

@[deprecated (since := "2024-11-21")]
alias smoothWithinAt_finset_prod' := contMDiffWithinAt_finset_prod'
@[deprecated (since := "2024-11-21")]
alias smoothWithinAt_finset_sum' := contMDiffWithinAt_finset_sum'


@[deprecated (since := "2024-11-21")]
alias smoothWithinAt_finset_prod := contMDiffWithinAt_finset_prod
@[deprecated (since := "2024-11-21")]
alias smoothWithinAt_finset_sum := contMDiffWithinAt_finset_sum

@[deprecated (since := "2024-11-21")] alias smoothAt_finset_prod' := contMDiffAt_finset_prod'
@[deprecated (since := "2024-11-21")] alias smoothAt_finset_sum' := contMDiffAt_finset_sum'

@[deprecated (since := "2024-11-21")] alias smoothAt_finset_prod := contMDiffAt_finset_prod
@[deprecated (since := "2024-11-21")] alias smoothAt_finset_sum := contMDiffAt_finset_sum

@[deprecated (since := "2024-11-21")] alias smoothOn_finset_prod' := contMDiffOn_finset_prod'
@[deprecated (since := "2024-11-21")] alias smoothOn_finset_sum' := contMDiffOn_finset_sum'

@[deprecated (since := "2024-11-21")] alias smoothOn_finset_prod := contMDiffOn_finset_prod
@[deprecated (since := "2024-11-21")] alias smoothOn_finset_sum := contMDiffOn_finset_sum

@[deprecated (since := "2024-11-21")] alias smooth_finset_prod' := contMDiffOn_finset_prod'
@[deprecated (since := "2024-11-21")] alias smooth_finset_sum' := contMDiffOn_finset_sum'

@[deprecated (since := "2024-11-21")] alias smooth_finset_prod := contMDiff_finset_prod
@[deprecated (since := "2024-11-21")] alias smooth_finset_sum := contMDiff_finset_sum

@[deprecated (since := "2024-11-21")] alias smooth_finprod := contMDiff_finprod
@[deprecated (since := "2024-11-21")] alias smooth_finsum := contMDiff_finsum

@[deprecated (since := "2024-11-21")] alias smooth_finprod_cond := contMDiff_finprod_cond
@[deprecated (since := "2024-11-21")] alias smooth_finsum_cond := contMDiff_finsum_cond

end CommMonoid

section

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] {E : Type*} [NormedAddCommGroup E]
  [NormedSpace 𝕜 E] {n : WithTop ℕ∞}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Monoid/Variantde88cf59b9000c31a9d7e921f625fcab9905d197186756e26a2483f84f8a884a.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23ff5ed7b529def0dd6022e6f9b6ddeb3eae49f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
