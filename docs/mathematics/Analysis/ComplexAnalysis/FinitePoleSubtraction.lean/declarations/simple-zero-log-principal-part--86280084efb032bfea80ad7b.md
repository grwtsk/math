# simple_zero_log_principal_part

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c216e08-bdeb-166b-6725-63cff35dd9fc",
  "kind": "theorem",
  "lexical_name": "simple_zero_log_principal_part",
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
  "slug": "simple-zero-log-principal-part--86280084efb032bfea80ad7b",
  "source": {
    "blob": "1686ea7594c4c99791be80c7603cc94612f2150c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 71,
    "path": "GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86280084efb032bfea80ad7b13f258bea3f598b88f97951ea78968594cc8132f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c216e08-bdeb-166b-6725-63cff35dd9fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem simple_zero_log_principal_part (f : ℂ → ℂ) (a : ℂ)
    (hf : AnalyticAt ℂ f a) (hz : f a = 0) (hd : deriv f a ≠ 0) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A a ∧
      logDeriv f =ᶠ[𝓝[≠] a] fun z => 1 / (z - a) + A z := by
  obtain ⟨hg, hg0, he⟩ := simple_zero_factorization f a hf hz hd
  have hp := logDeriv_principal_part f (dslope f a) a (1 : ℤ) hg hg0
    (Eventually.of_forall (fun z => by simpa only [zpow_one] using he z))
  exact ⟨logDeriv (dslope f a), hp.1, by simpa only [Int.cast_one] using hp.2⟩

/-- Removing one pole requires an update at the center, using the actual analytic regular value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1686ea7594c4c99791be80c7603cc94612f2150c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
