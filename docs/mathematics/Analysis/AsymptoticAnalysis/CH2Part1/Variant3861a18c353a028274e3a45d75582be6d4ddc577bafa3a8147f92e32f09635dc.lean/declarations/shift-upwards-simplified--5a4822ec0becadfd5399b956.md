# shift_upwards_simplified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3504,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51dc177c-0804-f2b0-0fdf-0a7f5ef88c07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11c04d82-b377-ee9b-21f8-05c28e9b488e",
  "kind": "theorem",
  "lexical_name": "shift_upwards_simplified",
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
  "slug": "shift-upwards-simplified--5a4822ec0becadfd5399b956",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3522,
    "line": 3504,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a4822ec0becadfd5399b956a376f466249dfa7408d2201a1b99c4cae3986523",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11c04d82-b377-ee9b-21f8-05c28e9b488e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3504–3522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shift_upwards_simplified (ν ε : ℝ) (hν : ν > 0) (x : ℝ) (hx : x < 0) :
    Filter.atTop.Tendsto (fun T:ℝ ↦ (Real.sin (π * x))^2 / π^2 * ∫ t in Set.Icc 0 T, ((B ε (ν + t) - B ε ν) * Real.exp (x * t))) (nhds (𝓕 (ϕ_pm ν ε) x)) := by
  have h_key (T : ℝ) (hT : 0 ≤ T) :
      (I * ∫ t in Set.Icc 0 (T / (2 * π)),
          (Phi_circ ν ε (-1 + I * t) - Phi_star ν ε (-1 + I * t)) * E (-(-1 + I * t) * x))
      - (I * ∫ t in Set.Icc 0 (T / (2 * π)),
          (Phi_circ ν ε (1 + I * t) + Phi_star ν ε (1 + I * t)) * E (-(1 + I * t) * x))
      + (2 * I * ∫ t in Set.Icc 0 (T / (2 * π)),
          Phi_star ν ε (I * t) * E (-(I * t) * x))
      = ↑(Real.sin (π * x)) ^ 2 / ↑π ^ 2 *
        ∫ t in Set.Icc 0 T, (B ε (ν + t) - B ε ν) * Real.exp (x * t) := by
    rw [shift_upwards_factor ν ε hν x, shift_upwards_imag_integral ν ε x,
        two_sub_E_sq x, shift_upwards_change_of_variables ν ε x (T / (2 * π)) (by positivity)]
    rw [show 2 * ↑π * (T / (2 * ↑π)) = T by field_simp]
    push_cast; ring_nf; congr; ext t; ring_nf
  apply ((shift_upwards ν ε hν x hx).comp tendsto_div_two_pi).congr'
  filter_upwards [Filter.eventually_ge_atTop 0] with T hT
  exact h_key T hT

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L3504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
