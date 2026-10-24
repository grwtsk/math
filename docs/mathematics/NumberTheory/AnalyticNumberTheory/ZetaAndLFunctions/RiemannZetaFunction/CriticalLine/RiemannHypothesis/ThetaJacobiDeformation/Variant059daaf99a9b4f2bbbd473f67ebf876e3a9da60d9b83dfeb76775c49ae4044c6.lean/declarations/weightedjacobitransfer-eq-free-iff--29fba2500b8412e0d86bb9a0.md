# weightedJacobiTransfer_eq_free_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47fabc4b-f298-76d1-4e39-b762383410a6",
  "kind": "theorem",
  "lexical_name": "weightedJacobiTransfer_eq_free_iff",
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
  "slug": "weightedjacobitransfer-eq-free-iff--29fba2500b8412e0d86bb9a0",
  "source": {
    "blob": "8039d3a5f375f0413bca43644994904a71c3bf88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant059daaf99a9b4f2bbbd473f67ebf876e3a9da60d9b83dfeb76775c49ae4044c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29fba2500b8412e0d86bb9a06a9ae3483071ad18c511735995a78a6ef23e1335",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant059daaf99a9b4f2bbbd473f67ebf876e3a9da60d9b83dfeb76775c49ae4044c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47fabc4b-f298-76d1-4e39-b762383410a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedJacobiTransfer_eq_free_iff {K : Type*} [Field K] (E b a : K) :
    weightedJacobiTransfer E b a = schrodingerTransfer E 0 ↔ a = 1 ∧ b = 0 := by
  constructor
  · intro h
    have ha := congrArg (fun M : Matrix (Fin 2) (Fin 2) K => M 1 0) h
    change a = 1 at ha
    refine ⟨ha, ?_⟩
    have hb := congrArg (fun M : Matrix (Fin 2) (Fin 2) K => M 0 0) h
    change (E - b) / a = E - 0 at hb
    rw [ha, div_one, sub_zero] at hb
    exact sub_eq_self.mp hb
  · rintro ⟨rfl, rfl⟩
    simp [weightedJacobiTransfer, schrodingerTransfer]

/-- The Jacobi truncation on sites `0,...,N`, with edge coefficient `a i`
between sites `i` and `i+1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant059daaf99a9b4f2bbbd473f67ebf876e3a9da60d9b83dfeb76775c49ae4044c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant059daaf99a9b4f2bbbd473f67ebf876e3a9da60d9b83dfeb76775c49ae4044c6.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8039d3a5f375f0413bca43644994904a71c3bf88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
