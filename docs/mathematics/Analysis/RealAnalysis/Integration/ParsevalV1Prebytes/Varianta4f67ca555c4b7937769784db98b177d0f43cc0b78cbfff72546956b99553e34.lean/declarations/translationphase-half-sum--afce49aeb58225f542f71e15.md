# translationPhase_half_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b1a4d55-f095-0842-b1e1-f9a3c8dcebc9",
  "kind": "theorem",
  "lexical_name": "translationPhase_half_sum",
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
  "slug": "translationphase-half-sum--afce49aeb58225f542f71e15",
  "source": {
    "blob": "5f09cdd7f2ea4231bb00d7d43dd56a94dc1183f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Varianta4f67ca555c4b7937769784db98b177d0f43cc0b78cbfff72546956b99553e34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afce49aeb58225f542f71e157f34795246021ef2fa09bd039c2fccf6b09242b5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Varianta4f67ca555c4b7937769784db98b177d0f43cc0b78cbfff72546956b99553e34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b1a4d55-f095-0842-b1e1-f9a3c8dcebc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem translationPhase_half_sum (s ξ : ℝ) :
    (1 / 2 : ℂ) * (translationPhase s ξ + translationPhase (-s) ξ) =
      (Real.cos (2 * Real.pi * ξ * s) : ℂ) := by
  have hn : 2 * Real.pi * (-s * ξ) = -(2 * Real.pi * ξ * s) := by ring
  have hp : 2 * Real.pi * (-(-s) * ξ) = 2 * Real.pi * ξ * s := by ring
  simp only [translationPhase, Real.fourierChar_apply, hn, hp, Complex.ofReal_neg]
  rw [add_comm, ← Complex.two_cos, ← Complex.ofReal_cos]
  ring

/-- The actual frequency CLM acts almost everywhere by its real cosine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Varianta4f67ca555c4b7937769784db98b177d0f43cc0b78cbfff72546956b99553e34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Varianta4f67ca555c4b7937769784db98b177d0f43cc0b78cbfff72546956b99553e34.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f09cdd7f2ea4231bb00d7d43dd56a94dc1183f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
