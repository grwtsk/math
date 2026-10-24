# adjoint_comp_self_injective_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a6292b78ff0806a603bc86f966096dd67cf2dc6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 660,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bc8a1ebb741e2a363159953caecf067d44e621ee959dca8b9559223297d43fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:095bda72-ccc7-ded6-beab-7c59281215ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:818ae54c-aca8-c43a-178a-aa0be7ce7a1b",
  "kind": "lemma",
  "lexical_name": "adjoint_comp_self_injective_iff",
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
  "slug": "adjoint-comp-self-injective-iff--cc31d079691034fcb3ba22b8",
  "source": {
    "blob": "2a6292b78ff0806a603bc86f966096dd67cf2dc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 668,
    "line": 660,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant3bc8a1ebb741e2a363159953caecf067d44e621ee959dca8b9559223297d43fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc31d079691034fcb3ba22b8b157252e04cf5d4607626edc6498a6e9f9c5fab8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Adjoint/Variant3bc8a1ebb741e2a363159953caecf067d44e621ee959dca8b9559223297d43fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:818ae54c-aca8-c43a-178a-aa0be7ce7a1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 660–668.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma adjoint_comp_self_injective_iff (A : E →ₗ[𝕜] F) :
    Function.Injective (A.adjoint ∘ A) ↔ Function.Injective A := by
  rw [← coe_comp, ← ker_eq_bot, ← ker_eq_bot, ker_adjoint_comp_self]

/--
This lemma uses the simp-normal form `⇑A ∘ ⇑(A.adjoint)` instead of `⇑(A ∘ₗ A.adjoint)`
(note the difference between `∘` and `∘ₗ`).
You may need to rewrite with `LinearMap.coe_comp` before applying this lemma.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Adjoint/Variant3bc8a1ebb741e2a363159953caecf067d44e621ee959dca8b9559223297d43fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant3bc8a1ebb741e2a363159953caecf067d44e621ee959dca8b9559223297d43fe.lean#L660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a6292b78ff0806a603bc86f966096dd67cf2dc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
