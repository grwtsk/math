# IsCycle.support_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebb390f7-1602-2939-277e-7d09f1ac25a1",
  "kind": "theorem",
  "lexical_name": "IsCycle.support_congr",
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
  "slug": "iscycle-support-congr--1961e048d3924cad043dc847",
  "source": {
    "blob": "0bbd1a91e27836660b62a37ccb45042c976989f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 490,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1961e048d3924cad043dc84705dd5fb34cffe49c1319bce1b3cea0bd7ea4293f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebb390f7-1602-2939-277e-7d09f1ac25a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCycle.support_congr (hf : IsCycle f) (hg : IsCycle g) (h : f.support ⊆ g.support)
    (h' : ∀ x ∈ f.support, f x = g x) : f = g := by
  have : f.support = g.support := by
    refine le_antisymm h ?_
    intro z hz
    obtain ⟨x, hx, _⟩ := id hf
    have hx' : g x ≠ x := by rwa [← h' x (mem_support.mpr hx)]
    obtain ⟨m, hm⟩ := hg.exists_pow_eq hx' (mem_support.mp hz)
    have h'' : ∀ x ∈ f.support ∩ g.support, f x = g x := by
      intro x hx
      exact h' x (mem_of_mem_inter_left hx)
    rwa [← hm, ←
      pow_eq_on_of_mem_support h'' _ x
        (mem_inter_of_mem (mem_support.mpr hx) (mem_support.mpr hx')),
      pow_apply_mem_support, mem_support]
  refine Equiv.Perm.support_congr h ?_
  simpa [← this] using h'

/-- If two cyclic permutations agree on all terms in their intersection,
and that intersection is not empty, then the two cyclic permutations must be equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bbd1a91e27836660b62a37ccb45042c976989f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
