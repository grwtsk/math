# logDeriv_completedLSym_sub_L_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5f06e94-342f-ce0d-9ed5-bdc617ff2c6a",
  "kind": "theorem",
  "lexical_name": "logDeriv_completedLSym_sub_L_inv",
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
  "slug": "logderiv-completedlsym-sub-l-inv--af01e6857ca4eb21cdfb62bf",
  "source": {
    "blob": "14c0a0b99efcbafcb8dbc842ec062c8e19f4e25d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 442,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af01e6857ca4eb21cdfb62bf1381567658e217e4ab654eea74f296ea9d96a53e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5f06e94-342f-ce0d-9ed5-bdc617ff2c6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_completedLSym_sub_L_inv (hq : 1 < q) (hχ1 : χ ≠ 1) (hχ1' : χ⁻¹ ≠ 1) {s : ℂ}
    (hre : 0 < s.re) (hL : χ.LFunction s ≠ 0) (hL' : χ⁻¹.LFunction s ≠ 0) :
    logDeriv (completedLSym χ⁻¹) s - logDeriv χ⁻¹.LFunction s
      = logDeriv (completedLSym χ) s - logDeriv χ.LFunction s := by
  rw [logDeriv_completedLSym_split hq hχ1 hre hL, logDeriv_completedLSym_split hq hχ1' hre hL',
    gammaFactor_inv]
  ring

/-- **Integrability of `(H₁+H₂)·(Λ_sym'/Λ_sym − L'/L)`** on the c-line (`hintΓ`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14c0a0b99efcbafcb8dbc842ec062c8e19f4e25d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
