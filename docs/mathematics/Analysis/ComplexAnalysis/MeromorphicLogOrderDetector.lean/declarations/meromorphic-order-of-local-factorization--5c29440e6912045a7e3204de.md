# meromorphic_order_of_local_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5afb0e28-e98e-0088-715f-54b2601f5959",
  "kind": "theorem",
  "lexical_name": "meromorphic_order_of_local_factorization",
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
  "slug": "meromorphic-order-of-local-factorization--5c29440e6912045a7e3204de",
  "source": {
    "blob": "6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 11,
    "path": "GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c29440e6912045a7e3204def5c0447c80be30ff342eaf54114cc32c79aefa21",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/MeromorphicLogOrderDetector.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5afb0e28-e98e-0088-715f-54b2601f5959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphic_order_of_local_factorization (f u : ℂ → ℂ) (a : ℂ) (k : ℤ)
    (hu : AnalyticAt ℂ u a) (hu0 : u a ≠ 0)
    (hfactor : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * u s) :
    MeromorphicAt f a ∧ meromorphicOrderAt f a = (k : WithTop ℤ) := by
  have hf : MeromorphicAt f a := MeromorphicAt.iff_eventuallyEq_zpow_smul_analyticAt.mpr
    ⟨k, u, hu, by simpa only [Filter.EventuallyEq, smul_eq_mul] using hfactor⟩
  exact ⟨hf, (meromorphicOrderAt_eq_int_iff hf).mpr
    ⟨u, hu, hu0, by simpa only [Filter.EventuallyEq, smul_eq_mul] using hfactor⟩⟩

/-- Finite meromorphic order supplies an analytic unit and signed local factorization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/MeromorphicLogOrderDetector.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
