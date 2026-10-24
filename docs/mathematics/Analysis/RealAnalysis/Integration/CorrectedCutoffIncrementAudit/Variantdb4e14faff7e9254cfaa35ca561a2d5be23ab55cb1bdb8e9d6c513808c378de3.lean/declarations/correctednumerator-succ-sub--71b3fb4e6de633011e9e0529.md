# correctedNumerator_succ_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58b29b6c816f3293fa0eb1668353b58fbec6f60a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27d12163-65ee-dd58-b3c9-1a74e8e53141",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d062fda-0836-c4d5-483a-5ac65e2bd652",
  "kind": "theorem",
  "lexical_name": "correctedNumerator_succ_sub",
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
  "slug": "correctednumerator-succ-sub--71b3fb4e6de633011e9e0529",
  "source": {
    "blob": "58b29b6c816f3293fa0eb1668353b58fbec6f60a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 38,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71b3fb4e6de633011e9e05291ee95f945e86fbb435cc66ef365d0ee1b4974925",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d062fda-0836-c4d5-483a-5ac65e2bd652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedNumerator_succ_sub (N : ℕ) (hN : 1 ≤ N) (z : ℂ) :
    correctedNumerator (N + 1) z - correctedNumerator N z =
      (mobiusReciprocalSum N : ℂ) * cutoffShape N z := by
  rw [correctedNumerator, correctedNumerator, reciprocal_succ]
  simp only [Complex.ofReal_add, Complex.ofReal_div, Complex.ofReal_intCast,
    Complex.ofReal_natCast]
  unfold dirichletNumerator
  rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1), exponential_split (N + 1) (by omega) z]
  unfold cutoffShape
  ring

/-- The complete numerator is a finite sum of the actual signed prefix increments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58b29b6c816f3293fa0eb1668353b58fbec6f60a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
