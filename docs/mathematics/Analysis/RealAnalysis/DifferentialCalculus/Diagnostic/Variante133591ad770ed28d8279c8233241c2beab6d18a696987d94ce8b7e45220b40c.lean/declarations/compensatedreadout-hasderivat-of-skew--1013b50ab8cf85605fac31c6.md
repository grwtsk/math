# compensatedReadout_hasDerivAt_of_skew

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af1975a7-2e9c-7bc1-e698-3930beb6e351",
  "kind": "theorem",
  "lexical_name": "compensatedReadout_hasDerivAt_of_skew",
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
  "slug": "compensatedreadout-hasderivat-of-skew--1013b50ab8cf85605fac31c6",
  "source": {
    "blob": "4886d460a28e7d68ba8f9a4f81f46200ac8e3d4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 191,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1013b50ab8cf85605fac31c6c578631c26d8fd6470f382f7ce6cf1cd611d51cc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af1975a7-2e9c-7bc1-e698-3930beb6e351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedReadout_hasDerivAt_of_skew [CompleteSpace H]
    (z : ℝ → H) (K : ℝ → H →L[ℂ] H) (c : ℝ → ℝ)
    (a : ℝ) (Ω Kprime : H →L[ℂ] H) (f : H) (cprime : ℝ)
    (hz : HasDerivAt z (Ω (z a) + f) a) (hK : HasDerivAt K Kprime a)
    (hc : HasDerivAt c cprime a) (hKs : IsSelfAdjoint (K a))
    (hΩ : Ω.adjoint = -Ω) :
    HasDerivAt (fun s => compensatedReadout (K s) (z s) (c s))
      (quadraticReadout (Kprime + observableCommutator (K a) Ω) (z a) +
        2 * (⟪z a, K a f⟫_ℂ).re + cprime) a := by
  convert compensatedReadout_hasDerivAt z K c a (Ω (z a) + f) Kprime cprime hz hK hc
    using 1
  rw [signed_work_algebra (K a) Kprime Ω hKs hΩ]

/-- Observable transport cancellation is an additional checked equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variante133591ad770ed28d8279c8233241c2beab6d18a696987d94ce8b7e45220b40c.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4886d460a28e7d68ba8f9a4f81f46200ac8e3d4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
