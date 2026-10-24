# derivative_error_at_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bea252d7-ba7d-3738-8652-b5e629741a1d",
  "kind": "theorem",
  "lexical_name": "derivative_error_at_center",
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
  "slug": "derivative-error-at-center--4367d6b9ddb7dfdcf462fcf5",
  "source": {
    "blob": "79f044d4628afdb613bec1ea2eab642f9c7920db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/Analysis/Complex/ClosedDiskCauchy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4367d6b9ddb7dfdcf462fcf5e43480ef40134b08190f463f2ed1e1e4203523d4",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ClosedDiskCauchy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bea252d7-ba7d-3738-8652-b5e629741a1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_error_at_center {f g : ℂ → ℂ} {c : ℂ} {S E : ℝ}
    (hS : 0 < S)
    (hf : ∀ z ∈ closedBall c S, DifferentiableAt ℂ f z)
    (hg : ∀ z ∈ closedBall c S, DifferentiableAt ℂ g z)
    (he : ∀ z ∈ sphere c S, ‖f z - g z‖ ≤ E) :
    ‖deriv f c - deriv g c‖ ≤ E / S := by
  have hc : c ∈ closedBall c S := mem_closedBall_self hS.le
  have h := Complex.norm_deriv_le_of_forall_mem_sphere_norm_le hS
    (diffContOnCl_ball hS (fun z hz => (hf z hz).sub (hg z hz))) he
  simpa only [deriv_sub (hf c hc) (hg c hc)] using h

end GRWTSK.Analysis.Complex.ClosedDiskCauchy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/ClosedDiskCauchy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/ClosedDiskCauchy.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79f044d4628afdb613bec1ea2eab642f9c7920db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
