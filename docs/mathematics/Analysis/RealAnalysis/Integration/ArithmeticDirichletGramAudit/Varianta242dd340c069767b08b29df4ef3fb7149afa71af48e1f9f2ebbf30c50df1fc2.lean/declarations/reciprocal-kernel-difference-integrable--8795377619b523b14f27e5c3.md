# reciprocal_kernel_difference_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3eaff084-6c51-a24d-8080-9ee78a0f30c4",
  "kind": "theorem",
  "lexical_name": "reciprocal_kernel_difference_integrable",
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
  "slug": "reciprocal-kernel-difference-integrable--8795377619b523b14f27e5c3",
  "source": {
    "blob": "da97808159110bd03b6e3b32d563a4c0c84dad74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Varianta242dd340c069767b08b29df4ef3fb7149afa71af48e1f9f2ebbf30c50df1fc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8795377619b523b14f27e5c3ce3b68eb52be2e350927e6bcc56accdb5123d395",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Varianta242dd340c069767b08b29df4ef3fb7149afa71af48e1f9f2ebbf30c50df1fc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3eaff084-6c51-a24d-8080-9ee78a0f30c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_kernel_difference_integrable (a b : ℝ) (ha : 0 < a) :
    IntegrableOn (fun t : ℝ ↦ Real.exp (-a * t) * (1 - Real.cos (b * t))) (Ioi 0) := by
  have h0 := exponential_cosine_laplace_integrable a 0 ha
  simp only [zero_mul, Real.cos_zero, mul_one] at h0
  apply (h0.sub (exponential_cosine_laplace_integrable a b ha)).congr
  filter_upwards [] with t
  change Real.exp (-a * t) - Real.exp (-a * t) * Real.cos (b * t) = _
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Varianta242dd340c069767b08b29df4ef3fb7149afa71af48e1f9f2ebbf30c50df1fc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Varianta242dd340c069767b08b29df4ef3fb7149afa71af48e1f9f2ebbf30c50df1fc2.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da97808159110bd03b6e3b32d563a4c0c84dad74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
