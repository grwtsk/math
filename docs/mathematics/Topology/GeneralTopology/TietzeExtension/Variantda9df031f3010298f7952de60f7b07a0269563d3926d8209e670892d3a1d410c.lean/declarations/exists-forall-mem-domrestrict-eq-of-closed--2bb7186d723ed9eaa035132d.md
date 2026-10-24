# exists_forall_mem_domRestrict_eq_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b3db329f400ab296085c00d203ded5f2010274b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 447,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da9df031f3010298f7952de60f7b07a0269563d3926d8209e670892d3a1d410c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:048fc326-7ec4-22a5-3726-36d7a273a9fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97806a08-5c0d-b1d5-dbd8-6c0e7851d651",
  "kind": "theorem",
  "lexical_name": "exists_forall_mem_domRestrict_eq_of_closed",
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
  "slug": "exists-forall-mem-domrestrict-eq-of-closed--2bb7186d723ed9eaa035132d",
  "source": {
    "blob": "9b3db329f400ab296085c00d203ded5f2010274b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 447,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantda9df031f3010298f7952de60f7b07a0269563d3926d8209e670892d3a1d410c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bb7186d723ed9eaa035132d6d808441115cac955f6826b253d58cff86594ca2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TietzeExtension/Variantda9df031f3010298f7952de60f7b07a0269563d3926d8209e670892d3a1d410c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97806a08-5c0d-b1d5-dbd8-6c0e7851d651`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_forall_mem_domRestrict_eq_of_closed {s : Set Y} (f : s →ᵇ ℝ) (hs : IsClosed s)
    {t : Set ℝ} [OrdConnected t] (hf : ∀ x, f x ∈ t) (hne : t.Nonempty) :
    ∃ g : Y →ᵇ ℝ, (∀ y, g y ∈ t) ∧ g.domRestrict s = f := by
  obtain ⟨g, hg, hgf⟩ :=
    exists_extension_forall_mem_of_isClosedEmbedding f hf hne hs.isClosedEmbedding_subtypeVal
  exact ⟨g, hg, DFunLike.coe_injective hgf⟩

@[deprecated (since := "2026-07-19")]
alias exists_forall_mem_restrict_eq_of_closed := exists_forall_mem_domRestrict_eq_of_closed

end BoundedContinuousFunction

namespace ContinuousMap

/-- **Tietze extension theorem** for real-valued continuous maps, a version for a closed
embedding. Let `e` be a closed embedding of a nonempty topological space `X` into a normal
topological space `Y`. Let `f` be a continuous real-valued function on `X`. Let `t` be a nonempty
convex set of real numbers (we use `OrdConnected` instead of `Convex` to automatically deduce this
argument by typeclass search) such that `f x ∈ t` for all `x`. Then there exists a continuous
real-valued function `g : C(Y, ℝ)` such that `g y ∈ t` for all `y` and `g ∘ e = f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variantda9df031f3010298f7952de60f7b07a0269563d3926d8209e670892d3a1d410c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantda9df031f3010298f7952de60f7b07a0269563d3926d8209e670892d3a1d410c.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b3db329f400ab296085c00d203ded5f2010274b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
