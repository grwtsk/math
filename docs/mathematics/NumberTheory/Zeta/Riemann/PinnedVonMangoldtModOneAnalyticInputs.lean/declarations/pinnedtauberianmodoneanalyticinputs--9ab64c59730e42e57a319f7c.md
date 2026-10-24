# PinnedTauberianModOneAnalyticInputs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30be0cacd3155815e66a988835d7a184dd85e3e06882d0c4abd9488e53548d33",
  "kind": "structure",
  "lexical_name": "PinnedTauberianModOneAnalyticInputs",
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
  "slug": "pinnedtauberianmodoneanalyticinputs--9ab64c59730e42e57a319f7c",
  "source": {
    "blob": "0d4c0f5d094fef753ba287f448ea0e2b77a2b992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 170,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ab64c59730e42e57a319f7cb7e8b35a8a65f383d51f630d90445b02719f2538",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30be0cacd3155815e66a988835d7a184dd85e3e06882d0c4abd9488e53548d33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PinnedTauberianModOneAnalyticInputs : Prop where
  lambda_nonnegative :
    ∀ n : ℕ, 0 ≤ pinnedTauberianLambda n
  summability :
    ∀ σ : ℝ, 1 < σ → Summable (pinnedTauberianNormTerm σ)
  chebyshev :
    PinnedVonMangoldtCheby
  auxiliary_continuous :
    ContinuousOn pinnedTauberianModOneAux
      {s : ℂ | 1 ≤ s.re}
  pole_identity :
    ∀ s : ℂ, 1 < s.re →
      pinnedTauberianModOneAux s =
        LSeries pinnedTauberianLambdaComplex s - 1 / (s - 1)

/-- Fully sourced PINNED inputs to the missing Tauberian theorem.
In particular, no field carries WeakPNT or an RH assertion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d4c0f5d094fef753ba287f448ea0e2b77a2b992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
