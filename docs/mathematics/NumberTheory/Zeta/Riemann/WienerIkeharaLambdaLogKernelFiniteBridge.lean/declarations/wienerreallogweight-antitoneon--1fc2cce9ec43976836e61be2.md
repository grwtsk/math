# wienerRealLogWeight_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e98f0e4-de97-6fcb-30f1-38a7b87f14fd",
  "kind": "theorem",
  "lexical_name": "wienerRealLogWeight_antitoneOn",
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
  "slug": "wienerreallogweight-antitoneon--1fc2cce9ec43976836e61be2",
  "source": {
    "blob": "ac9a6976c068cb036133ffedbe789e3057e9c482",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 217,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fc2cce9ec43976836e61be240608538861e15501d49e2582c6f3daa4bbd800d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e98f0e4-de97-6fcb-30f1-38a7b87f14fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerRealLogWeight_antitoneOn
    {T : ℝ} (hT : 0 < T) :
    AntitoneOn (wienerRealLogWeight T) (Set.Ioi 0) := by
  intro x hx y hy hxy
  have hxpos : 0 < x := hx
  have hypos : 0 < y := hy
  have hlog :
      Real.log (x / T) ≤ Real.log (y / T) := by
    apply Real.log_le_log (div_pos hxpos hT)
    exact div_le_div_of_nonneg_right hxy hT.le
  have hden :
      wienerLogKernelDen (Real.log (x / T)) ≤
        wienerLogKernelDen (Real.log (y / T)) :=
    wienerLogKernelDen_strictMono.monotone hlog
  have hinv :
      (wienerLogKernelDen (Real.log (y / T)))⁻¹ ≤
        (wienerLogKernelDen (Real.log (x / T)))⁻¹ := by
    simpa only [one_div] using
      one_div_le_one_div_of_le
        (wienerLogKernelDen_pos _) hden
  rw [wienerRealLogWeight_eq_den_inv hT hxpos,
    wienerRealLogWeight_eq_den_inv hT hypos]
  exact mul_le_mul_of_nonneg_left hinv
    (inv_nonneg.mpr hT.le)

/-- The exact NATURAL weight at all positive indices; the shift k+1
guarantees we never insert x=0 into a logarithmic integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac9a6976c068cb036133ffedbe789e3057e9c482` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
