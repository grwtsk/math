# IsNontrivial.exists_abv_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "012dfcde951ee1cd637568ea888de7ece7c622cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 369,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:175ff701-6508-bfcb-5392-94707a378b24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e802d1b3-b190-e794-024e-bba5d964ed2d",
  "kind": "lemma",
  "lexical_name": "IsNontrivial.exists_abv_lt_one",
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
  "slug": "isnontrivial-exists-abv-lt-one--3cfc8363230b75b6a1a1de9d",
  "source": {
    "blob": "012dfcde951ee1cd637568ea888de7ece7c622cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 369,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cfc8363230b75b6a1a1de9d9aac0f17f1023706cc7b4c5988a3cbd2ae74ddb8",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e802d1b3-b190-e794-024e-bba5d964ed2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsNontrivial.exists_abv_lt_one (h : v.IsNontrivial) : ∃ x ≠ 0, v x < 1 := by
  obtain ⟨y, hy⟩ := h.exists_abv_gt_one
  have hy₀ := v.ne_zero_iff.mp <| (zero_lt_one.trans hy).ne'
  refine ⟨y⁻¹, inv_ne_zero hy₀, ?_⟩
  rw [map_inv₀]
  exact (inv_lt_one₀ <| v.pos hy₀).mpr hy

end LinearOrderedSemifield

end nontrivial

end AbsoluteValue

/-- A function `f` is an absolute value if it is nonnegative, zero only at 0, additive, and
multiplicative.

See also the type `AbsoluteValue` which represents a bundled version of absolute values.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `012dfcde951ee1cd637568ea888de7ece7c622cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
