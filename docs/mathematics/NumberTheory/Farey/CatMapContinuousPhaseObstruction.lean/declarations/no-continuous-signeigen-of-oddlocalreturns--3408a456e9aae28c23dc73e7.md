# no_continuous_signEigen_of_oddLocalReturns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22a94ee7-aee9-95bc-bee5-3979b7dbed27",
  "kind": "theorem",
  "lexical_name": "no_continuous_signEigen_of_oddLocalReturns",
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
  "slug": "no-continuous-signeigen-of-oddlocalreturns--3408a456e9aae28c23dc73e7",
  "source": {
    "blob": "3b80d1961aaf5d63cdb2922e9bc72097bea3012d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 89,
    "path": "GRWTSK/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3408a456e9aae28c23dc73e74ab13df33af5f5820d3d305dae467cc8bd83034b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22a94ee7-aee9-95bc-bee5-3979b7dbed27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_continuous_signEigen_of_oddLocalReturns
    (T : X → X) (F : X → ℂ) (p : X)
    (hContinuous : Continuous F)
    (hEigen : ∀ x, F (T x) = (-1 : ℂ) * F x)
    (hPos : 0 < (F p).re)
    (hOdd : HasOddLocalReturns T p) : False := by
  let U : Set X := {x | 0 < (F x).re}
  have hComp : Continuous (fun x : X => (F x).re) :=
    Complex.continuous_re.comp hContinuous
  have hU : IsOpen U := isOpen_Ioi.preimage hComp
  obtain ⟨x, hx, n, hn⟩ := hOdd U hU hPos
  have hxPos : 0 < (F x).re := hx
  have hnPos : 0 < (F ((T^[2 * n + 1]) x)).re := hn
  rw [signEigen_odd T F hEigen n x] at hnPos
  have hnNeg : 0 < -(F x).re := by simpa using hnPos
  linarith

/-- The selected genuine torus torsion point is assigned value 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b80d1961aaf5d63cdb2922e9bc72097bea3012d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
