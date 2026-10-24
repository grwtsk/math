# thetaTail_logSlope_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e51e9968-0da0-f14a-f33d-f2a0432e03e7",
  "kind": "theorem",
  "lexical_name": "thetaTail_logSlope_antitone",
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
  "slug": "thetatail-logslope-antitone--8385be8bb5eb7b2bf51e192b",
  "source": {
    "blob": "67bfeaf8b1a73660ec2503c5d21e1b46e6be2607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variantc9c4b4a001f1f1b506c5bd66186cfaf4418683c5861ca902ffe5b17cbf580c22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8385be8bb5eb7b2bf51e192ba6d89777ba1cd21c95e1aa6deb89559b4c07d84b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variantc9c4b4a001f1f1b506c5bd66186cfaf4418683c5861ca902ffe5b17cbf580c22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e51e9968-0da0-f14a-f33d-f2a0432e03e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_logSlope_antitone (r : ℕ) :
    AntitoneOn (fun t : ℝ => deriv (thetaTail r) t / thetaTail r t) (Ici 0) := by
  induction r with
  | zero => exact thetaPhi_logSlope_antitone
  | succ r ih =>
      have h := integralTail_logSlope_antitone (differentiable_thetaTail r)
        (thetaTail_integrableOn r) (deriv_thetaTail_integrableOn r)
        (thetaTail_tendsto_atTop r) (fun u hu => thetaTail_positive r hu) ih
      have he (u : ℝ) (hu : 0 ≤ u) :
          deriv (thetaTail (r + 1)) u / thetaTail (r + 1) u =
            deriv (integralTail (thetaTail r)) u / integralTail (thetaTail r) u := by
        rw [(hasDerivAt_thetaTail_succ r u).deriv,
          (hasDerivAt_integralTail (continuous_thetaTail r) (thetaTail_integrableOn r) u).deriv]
        rw [thetaTail_succ_eq_integral r hu]
        rfl
      intro x hx y hy hxy
      dsimp only
      rw [he x hx, he y hy]
      exact h hx hy hxy

/-- Each adjacent tail ratio is antitone on the entire nonnegative half-line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variantc9c4b4a001f1f1b506c5bd66186cfaf4418683c5861ca902ffe5b17cbf580c22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variantc9c4b4a001f1f1b506c5bd66186cfaf4418683c5861ca902ffe5b17cbf580c22.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67bfeaf8b1a73660ec2503c5d21e1b46e6be2607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
