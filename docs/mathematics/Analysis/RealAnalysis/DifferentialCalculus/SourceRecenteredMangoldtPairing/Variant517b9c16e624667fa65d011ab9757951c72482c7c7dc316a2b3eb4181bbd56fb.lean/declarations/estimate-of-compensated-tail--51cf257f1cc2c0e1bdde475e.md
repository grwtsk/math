# estimate_of_compensated_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5217f5f7-4cf6-d766-bd5c-18a0c9f462f6",
  "kind": "theorem",
  "lexical_name": "estimate_of_compensated_tail",
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
  "slug": "estimate-of-compensated-tail--51cf257f1cc2c0e1bdde475e",
  "source": {
    "blob": "f73912ac574899b1b287a875f3712748c02ee1f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51cf257f1cc2c0e1bdde475ea692fd4f9f3bdcaffeaec1e4709bc67cf79d3dab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5217f5f7-4cf6-d766-bd5c-18a0c9f462f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_compensated_tail (K R : ℝ)
    (hcomp : ∀ A : ℝ, R ≤ A → -K ≤ compensatedLogPairing A) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_remaining_signed_tail (K + boundaryBudget) (max 91 R) (by
    have hr := le_max_left (91 : ℝ) R
    linarith)
  intro A hA
  have h91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
  exact remainingAtomWork_lower_of_signed_pairing _ A h91
    (signed_pairing_lower_of_compensated K A (by linarith)
      (hcomp A ((le_max_right _ _).trans hA)))

end RH16RecenteredMangoldt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f73912ac574899b1b287a875f3712748c02ee1f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
