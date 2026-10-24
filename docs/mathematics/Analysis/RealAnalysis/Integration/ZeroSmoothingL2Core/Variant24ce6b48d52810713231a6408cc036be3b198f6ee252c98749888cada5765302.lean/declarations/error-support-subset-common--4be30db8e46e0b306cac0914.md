# error_support_subset_common

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87ce0e9e5ae7d16edb3b4989532fd65d4f9ab57b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38c35e9d-a62b-2186-c7f7-10ec362868ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3baca2a4-d360-138a-e185-07035b1ec4c1",
  "kind": "theorem",
  "lexical_name": "error_support_subset_common",
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
  "slug": "error-support-subset-common--4be30db8e46e0b306cac0914",
  "source": {
    "blob": "87ce0e9e5ae7d16edb3b4989532fd65d4f9ab57b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4be30db8e46e0b306cac091428c7272efcfd1a0006531e9c4fd21963b37f2e8b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3baca2a4-d360-138a-e185-07035b1ec4c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem error_support_subset_common {f : ℝ → ℝ} (A : ℝ)
    (hsupport : Function.support f ⊆ Icc (-A) A) (ε : ℝ) (hε : 0 < ε) (hε1 : ε ≤ 1) :
    Function.support (fun x ↦ mollify f ε hε x - f x) ⊆ Icc (-A - 1) (A + 1) := by
  intro x hx
  by_contra hnot
  have hm : mollify f ε hε x = 0 := by
    by_contra hm
    have hs := mollify_support_subset A hsupport ε hε hm
    exact hnot ⟨by linarith [hs.1], by linarith [hs.2]⟩
  have hfx : f x = 0 := by
    by_contra hfx
    have hs := hsupport hfx
    exact hnot ⟨by linarith [hs.1], by linarith [hs.2]⟩
  exact hx (by
    change mollify f ε hε x - f x = 0
    rw [hm, hfx, sub_self])

/-- The shrinking prescribed kernels recover any continuous input pointwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87ce0e9e5ae7d16edb3b4989532fd65d4f9ab57b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
