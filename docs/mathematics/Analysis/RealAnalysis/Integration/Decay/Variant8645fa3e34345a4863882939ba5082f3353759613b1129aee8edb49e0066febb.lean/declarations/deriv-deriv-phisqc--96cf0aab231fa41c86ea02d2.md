# deriv_deriv_phiSqC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67c96e7c3575ca2a9acaf1f66e4172a190ed7a42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdc6a960-98ec-5d88-949d-dd428284e5b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb8a5209-918a-3a2d-35da-3c441287ce37",
  "kind": "theorem",
  "lexical_name": "deriv_deriv_phiSqC",
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
  "slug": "deriv-deriv-phisqc--96cf0aab231fa41c86ea02d2",
  "source": {
    "blob": "67c96e7c3575ca2a9acaf1f66e4172a190ed7a42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 275,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96cf0aab231fa41c86ea02d23e2c41ad7e035847d086d32d6e9703d7aeeccd1f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb8a5209-918a-3a2d-35da-3c441287ce37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv_deriv_phiSqC (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L) :
    deriv (deriv (fun u => (((phi ϱ L w u) ^ 2 : ℝ) : ℂ)))
      = fun u => ((deriv (deriv (fun u => phi ϱ L w u ^ 2)) u : ℝ) : ℂ) := by
  have h2 : ContDiff ℝ 2 (fun u => (phi ϱ L w u) ^ 2) :=
    ((phi_contDiff hϱ hw hwL).of_le (by norm_num)).pow 2
  rw [deriv_phiSqC hϱ hw hwL]
  exact deriv_ofReal_comp ((h2.deriv' (n := 1)).differentiable (by norm_num))

/-- ∫ φ² ≤ L. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67c96e7c3575ca2a9acaf1f66e4172a190ed7a42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
