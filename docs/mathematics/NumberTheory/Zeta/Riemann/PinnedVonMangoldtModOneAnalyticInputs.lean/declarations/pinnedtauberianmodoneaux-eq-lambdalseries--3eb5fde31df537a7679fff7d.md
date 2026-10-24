# pinnedTauberianModOneAux_eq_lambdaLSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9d0a0aa-2344-6f5a-ed8f-96e000388573",
  "kind": "theorem",
  "lexical_name": "pinnedTauberianModOneAux_eq_lambdaLSeries",
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
  "slug": "pinnedtauberianmodoneaux-eq-lambdalseries--3eb5fde31df537a7679fff7d",
  "source": {
    "blob": "0d4c0f5d094fef753ba287f448ea0e2b77a2b992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 113,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3eb5fde31df537a7679fff7d44f8f69258935d428507e5a26363bd61f9befeb5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9d0a0aa-2344-6f5a-ed8f-96e000388573`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedTauberianModOneAux_eq_lambdaLSeries
    {s : ℂ} (hs : 1 < s.re) :
    pinnedTauberianModOneAux s =
      LSeries pinnedTauberianLambdaComplex s - 1 / (s - 1) := by
  have hsource :=
    (ArithmeticFunction.vonMangoldt.eqOn_LFunctionResidueClassAux
      (q := 1) (a := (1 : ZMod 1))
      (isUnit_one : IsUnit (1 : ZMod 1)))
      (show s ∈ {z : ℂ | 1 < z.re} from hs)
  have hseries := pinnedTauberianResidueClassOne_LSeries_eq s
  change pinnedTauberianModOneAux s =
    LSeries
      (fun n : ℕ =>
        (ArithmeticFunction.vonMangoldt.residueClass
          (1 : ZMod 1) n : ℂ)) s -
        (Nat.totient 1 : ℂ)⁻¹ / (s - 1) at hsource
  rw [hseries] at hsource
  simpa [Nat.totient_one] using hsource

/-- The historic norm term is the literal norm of the pinned L-series
term on the real-parameter vertical line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d4c0f5d094fef753ba287f448ea0e2b77a2b992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
