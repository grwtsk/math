# isRat_realSqrt_of_isRat_ofNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c547180fd43a1ff55d7022dff099929d8f9cf8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60756e18-d09c-d27e-d0e7-74df70e81d00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8145bb45-ddb3-aa41-ba43-c47c25438ba4",
  "kind": "lemma",
  "lexical_name": "isRat_realSqrt_of_isRat_ofNat",
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
  "slug": "israt-realsqrt-of-israt-ofnat--bb61cbd813cf6889b5c8dcd8",
  "source": {
    "blob": "4c547180fd43a1ff55d7022dff099929d8f9cf8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb61cbd813cf6889b5c8dcd88d4366096cefed127a557f2a69a62d1b2283d496",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8145bb45-ddb3-aa41-ba43-c47c25438ba4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isRat_realSqrt_of_isRat_ofNat {x : ℝ} {n sn : ℕ} {d sd : ℕ} (hn : sn * sn = n)
    (hd : sd * sd = d) (h : IsRat x (.ofNat n) d) :
    IsRat √x (.ofNat sn) sd := by
  obtain ⟨_, rfl⟩ := h
  refine ⟨?_, ?out⟩
  · apply invertibleOfNonzero
    rw [← mul_self_ne_zero, ← Nat.cast_mul, hd]
    exact Invertible.ne_zero _
  · simp [← hn, ← hd, Real.sqrt_mul (mul_self_nonneg ↑sn)]

/-- `norm_num` extension that evaluates the function `Real.sqrt`. -/
@[norm_num √_]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c547180fd43a1ff55d7022dff099929d8f9cf8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
