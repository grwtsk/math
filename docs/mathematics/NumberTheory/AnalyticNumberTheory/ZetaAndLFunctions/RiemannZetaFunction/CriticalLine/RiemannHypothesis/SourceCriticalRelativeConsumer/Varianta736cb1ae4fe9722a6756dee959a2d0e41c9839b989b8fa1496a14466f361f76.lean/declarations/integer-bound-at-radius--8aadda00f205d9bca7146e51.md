# integer_bound_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12ba913f-7ddc-43ba-c8c3-3408b26ff8c8",
  "kind": "theorem",
  "lexical_name": "integer_bound_at_radius",
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
  "slug": "integer-bound-at-radius--8aadda00f205d9bca7146e51",
  "source": {
    "blob": "f332986727fee7bceec8bf374facba31de2ff978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRelativeConsumer/Varianta736cb1ae4fe9722a6756dee959a2d0e41c9839b989b8fa1496a14466f361f76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8aadda00f205d9bca7146e51e7cb9cf31f20d525d7b4dd5a05443bc25f73cfa8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRelativeConsumer/Varianta736cb1ae4fe9722a6756dee959a2d0e41c9839b989b8fa1496a14466f361f76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12ba913f-7ddc-43ba-c8c3-3408b26ff8c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integer_bound_at_radius {K R : ℝ} (hR : 1 ≤ R)
    (hcritical : ∀ A : ℝ, R ≤ A → criticalRelativePairing A ≤ K) :
    ∀ A : ℝ, R ≤ A → integerJ A ≤ K + 1 + 10 / R := by
  intro A hRA
  have hp : 0 < R := by linarith
  have hd : 10 / A ≤ 10 / R :=
    div_le_div_of_nonneg_left (by norm_num) hp hRA
  have hi := integerJ_le_critical (hR.trans hRA)
  linarith [hcritical A hRA]

/-- Actual residual upper bound, retaining both quantitative correction losses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRelativeConsumer/Varianta736cb1ae4fe9722a6756dee959a2d0e41c9839b989b8fa1496a14466f361f76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRelativeConsumer/Varianta736cb1ae4fe9722a6756dee959a2d0e41c9839b989b8fa1496a14466f361f76.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f332986727fee7bceec8bf374facba31de2ff978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
