# thmB_mult_lam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3fe0267-9519-3ed1-cb80-4a1fe416923b",
  "kind": "theorem",
  "lexical_name": "thmB_mult_lam",
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
  "slug": "thmb-mult-lam--0e6fa2a160fc31fc7c0f8606",
  "source": {
    "blob": "b55723b0b130f5138e7c367b4781f055baf103ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 339,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e6fa2a160fc31fc7c0f8606bb50afbbbf04143dc201f4b8fbc16de12ed34603",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3fe0267-9519-3ed1-cb80-4a1fe416923b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmB_mult_lam {lam : ℝ} (h0 : 0 < lam) (h1 : lam < 1) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (Hfun lam - ε) * (Ncount T (2 * T) : ℝ) ≤ N0simple T (2 * T) := by
  have hP := paramsOf_valid taperProfile_stdProfile h0 h1.le
  exact thmBmult_abstract zetaZeroConfig paperInputs_zeta (paramsOf stdProfile lam) hP h1
    (PrimeSide.thm_traces hP paperInputs_zeta)

/-- **multiplicity-aware Theorem C for ζ at fixed λ ∈ (0,1), UNCONDITIONAL**:
(G(λ) − ε)·N(T,2T) ≤ N_d(T,2T), G(λ) = 3/2 − 1/(2λ) − λ/6. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b55723b0b130f5138e7c367b4781f055baf103ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
