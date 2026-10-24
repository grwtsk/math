# quartic_unit_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba2d9345-abf5-1d5d-8113-254906087e9d",
  "kind": "lemma",
  "lexical_name": "quartic_unit_mean",
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
  "slug": "quartic-unit-mean--352f7c33568eb55d3aaee63a",
  "source": {
    "blob": "45c3117e84bd805c0a0c72020247b6e1c76f56bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:352f7c33568eb55d3aaee63a57340e84185ec10c90145854f59f153d0149172c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba2d9345-abf5-1d5d-8113-254906087e9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quartic_unit_mean :
    (∫ u : ℝ in (0 : ℝ)..1, u ^ 2 * (u - 1) ^ 2 / 24) = (1 / 720 : ℝ) := by
  let A : ℝ → ℝ := fun u => u ^ 5 / 120 - u ^ 4 / 48 + u ^ 3 / 72
  have hd (u : ℝ) : HasDerivAt A (u ^ 2 * (u - 1) ^ 2 / 24) u := by
    have h1 := ((hasDerivAt_id u).pow 5).div_const 120
    have h2 := ((hasDerivAt_id u).pow 4).div_const 48
    have h3 := ((hasDerivAt_id u).pow 3).div_const 72
    convert (h1.sub h2).add h3 using 1 <;> dsimp only [A] <;> ring
  have hc : Continuous (fun u : ℝ => u ^ 2 * (u - 1) ^ 2 / 24) := by fun_prop
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun u _ => hd u) (hc.intervalIntegrable 0 1)
  norm_num [A] at h
  exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45c3117e84bd805c0a0c72020247b6e1c76f56bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
