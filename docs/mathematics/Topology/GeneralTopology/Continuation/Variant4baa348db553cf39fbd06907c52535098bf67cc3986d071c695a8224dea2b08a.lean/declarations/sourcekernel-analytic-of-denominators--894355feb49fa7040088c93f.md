# sourceKernel_analytic_of_denominators

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1395709a-62ac-3311-cddc-d664155f2ca0",
  "kind": "theorem",
  "lexical_name": "sourceKernel_analytic_of_denominators",
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
  "slug": "sourcekernel-analytic-of-denominators--894355feb49fa7040088c93f",
  "source": {
    "blob": "7789990240985152f5d5a5b6958d221afc15a01c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 186,
    "path": "GRWTSK/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:894355feb49fa7040088c93fa13de3c6b5c6d24b4d04e80aff93c65b97bd99af",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1395709a-62ac-3311-cddc-d664155f2ca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceKernel_analytic_of_denominators
    (z s : ℂ)
    (hs : s ≠ 0)
    (hminus : s - 2 * z ≠ 0)
    (hplus : s + 2 * z ≠ 0) :
    AnalyticAt ℂ (sourceKernel z) s := by
  have hleft :
      AnalyticAt ℂ
        (fun t ↦
          polynomialKernel (positivePolynomial z)
            (t - 2 * z)) s :=
    (polynomialKernel_analytic _ _ hminus).comp
      (f := fun t : ℂ ↦ t - 2 * z)
      (x := s)
      (analyticAt_id.sub analyticAt_const)
  have hright :
      AnalyticAt ℂ
        (fun t ↦
          polynomialKernel (positivePolynomial (-z))
            (t + 2 * z)) s :=
    (polynomialKernel_analytic _ _ hplus).comp
      (f := fun t : ℂ ↦ t + 2 * z)
      (x := s)
      (analyticAt_id.add analyticAt_const)
  exact analyticAt_const.mul
    ((hleft.add hright).sub
      (analyticAt_const.mul
        (polynomialKernel_analytic _ _ hs)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7789990240985152f5d5a5b6958d221afc15a01c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
