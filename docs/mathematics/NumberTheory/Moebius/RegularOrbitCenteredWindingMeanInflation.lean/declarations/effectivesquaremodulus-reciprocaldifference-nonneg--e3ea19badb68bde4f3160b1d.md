# effectiveSquareModulus_reciprocalDifference_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54115ea6-9c4b-6d69-fc4d-5e910d14abe2",
  "kind": "theorem",
  "lexical_name": "effectiveSquareModulus_reciprocalDifference_nonneg",
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
  "slug": "effectivesquaremodulus-reciprocaldifference-nonneg--e3ea19badb68bde4f3160b1d",
  "source": {
    "blob": "0abd6a2e737d405f8d9950e4da27694b86175efd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 18,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingMeanInflation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3ea19badb68bde4f3160b1d8d7eb5e5974fc95bcc8d83f3a22f7cea26509ca5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingMeanInflation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54115ea6-9c4b-6d69-fc4d-5e910d14abe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem effectiveSquareModulus_reciprocalDifference_nonneg
    {b d : ℕ} (hd : d ∈ effectiveEndpointSquareModulusSet b) :
    0 ≤ (((d * d : ℕ) : ℝ))⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹ := by
  have hdmem := Finset.mem_filter.mp hd
  have hsq : d * d < b := hdmem.2
  have hpos : 0 < d * d := by
    have hd1 := (Finset.mem_Ico.mp hdmem.1).1
    positivity
  have hle : d * d ≤ b + 1 := by omega
  have hcast : ((d * d : ℕ) : ℝ) ≤ ((b + 1 : ℕ) : ℝ) := by exact_mod_cast hle
  have hdR : (0 : ℝ) < ((d * d : ℕ) : ℝ) := by exact_mod_cast hpos
  have hbR : (0 : ℝ) < ((b + 1 : ℕ) : ℝ) := by positivity
  have hinv : (((b + 1 : ℕ) : ℝ))⁻¹ ≤ (((d * d : ℕ) : ℝ))⁻¹ :=
    (inv_le_inv₀ hbR hdR).2 hcast
  linarith

/-- Mean inflation is nonnegative on effective moduli. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingMeanInflation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingMeanInflation.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0abd6a2e737d405f8d9950e4da27694b86175efd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
