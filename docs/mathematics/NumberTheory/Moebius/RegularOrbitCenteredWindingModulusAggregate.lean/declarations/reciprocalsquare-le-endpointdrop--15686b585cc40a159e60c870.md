# reciprocalSquare_le_endpointDrop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41b798c1-8aa0-4a01-ff49-3f40b649a6ee",
  "kind": "theorem",
  "lexical_name": "reciprocalSquare_le_endpointDrop",
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
  "slug": "reciprocalsquare-le-endpointdrop--15686b585cc40a159e60c870",
  "source": {
    "blob": "40fe5172d37244ee49172c471d497b1d45261d64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 54,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15686b585cc40a159e60c8705afeebd1102b188cef2444ccc0c3a6558d0865cf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41b798c1-8aa0-4a01-ff49-3f40b649a6ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalSquare_le_endpointDrop
    {d : ℕ} (hd : 2 ≤ d) :
    (((d : ℝ) ^ 2)⁻¹) ≤
      (((d - 1 : ℕ) : ℝ))⁻¹ - (d : ℝ)⁻¹ := by
  have hdR : (1 : ℝ) ≤ (d - 1 : ℕ) := by
    exact_mod_cast (by omega : 1 ≤ d - 1)
  have hdpos : (0 : ℝ) < d := by positivity
  have hdm1pos : (0 : ℝ) < (d - 1 : ℕ) := by positivity
  have hsub : ((d - 1 : ℕ) : ℝ) = (d : ℝ) - 1 := by
    rw [Nat.cast_sub (by omega)]
    norm_num
  rw [hsub]
  have hd2 : (2 : ℝ) ≤ d := by exact_mod_cast hd
  have hdm1 : (0 : ℝ) < (d : ℝ) - 1 := by linarith
  field_simp
  nlinarith

/-- Finite reciprocal-square mass on `[2,b)` is at most one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fe5172d37244ee49172c471d497b1d45261d64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
