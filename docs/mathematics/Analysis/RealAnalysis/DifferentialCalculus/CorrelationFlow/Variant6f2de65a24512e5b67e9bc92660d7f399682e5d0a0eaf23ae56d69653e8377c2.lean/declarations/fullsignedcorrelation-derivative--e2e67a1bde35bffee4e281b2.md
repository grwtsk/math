# fullSignedCorrelation_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1ce0e56662f34347586ba7f01c40a6342a58cee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47ceb5c3-15b8-ed78-601a-45b49b0ba285",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed9959b1-ba03-f121-5521-3b0f4a9b5b0b",
  "kind": "theorem",
  "lexical_name": "fullSignedCorrelation_derivative",
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
  "slug": "fullsignedcorrelation-derivative--e2e67a1bde35bffee4e281b2",
  "source": {
    "blob": "b1ce0e56662f34347586ba7f01c40a6342a58cee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 171,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2e67a1bde35bffee4e281b2b45841ca883dd3db8633ad512077c51b673ee0e1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed9959b1-ba03-f121-5521-3b0f4a9b5b0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullSignedCorrelation_derivative
    (flow : ResidualAwareCorrelationFlow (Left := Left) (Right := Right))
    (t : ℝ) (x : ℕ) :
    HasDerivAt (fun s ↦ flow.fullSignedCorrelation s x)
      (flow.fullSignedDerivative t x) t := by
  have hpacket := correlation_derivative_eq_defect
    flow.toCorrelationCompatibleFlow t x
  have hnegative :
      HasDerivAt
        (fun s ↦ -inner ℂ (flow.leftEvolution s)
          (flow.incidenceEvolution s x (flow.rightEvolution s)))
        (-inner ℂ (flow.leftEvolution t)
          (flow.defect t x (flow.rightEvolution t))) t :=
    HasDerivAt.neg hpacket
  have hfull := HasDerivAt.sub hnegative (flow.residual_equation t x)
  have hfunction :
      (fun s ↦ flow.fullSignedCorrelation s x) =ᶠ[nhds t]
        ((-fun s ↦ inner ℂ (flow.leftEvolution s)
          (flow.incidenceEvolution s x (flow.rightEvolution s))) -
          fun s ↦ flow.residualPairing s x) := by
    filter_upwards with s
    rfl
  have htransported := hfull.congr_of_eventuallyEq hfunction
  apply htransported.congr_deriv
  rfl

/-- A bound for the derivative of the complete signed correlation, including
the residual derivative.  It is an independent analytic proposition rather
than data used to construct a flow. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1ce0e56662f34347586ba7f01c40a6342a58cee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
