# finite_zeta_telescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0890f140-9cd0-de38-f454-f876fdcac633",
  "kind": "theorem",
  "lexical_name": "finite_zeta_telescope",
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
  "slug": "finite-zeta-telescope--e711b5935e372a6cc3dabd6f",
  "source": {
    "blob": "4543990a599ffb9fb6e6cb0f2b32c75a89bc7b5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e711b5935e372a6cc3dabd6f2979d64963b4ff4e97e804ca42511f7f9104620f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0890f140-9cd0-de38-f454-f876fdcac633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_zeta_telescope (s : ℂ) (hs : s ≠ 1) (N : ℕ) :
    (∑ k ∈ Finset.range N, logPower ((k : ℝ) + 1) (-s)) =
      (1 - logPower ((N : ℝ) + 1) (1 - s)) / (s - 1) +
      (1 - logPower ((N : ℝ) + 1) (-s)) / 2 +
      s * (1 - logPower ((N : ℝ) + 1) (-s - 1)) / 12 -
      s * (s + 1) * (s + 2) *
        ∑ k ∈ Finset.range N, cellRemainder ((k : ℝ) + 1) (-s) := by
  have hsn : s - 1 ≠ 0 := sub_ne_zero.mpr hs
  have hz : -s + 1 ≠ 0 := by intro he; apply hsn; linear_combination -he
  have h := finite_power_sum 1 (by norm_num) (-s) hz N
  have hone (z : ℂ) : logPower 1 z = 1 := by simp [logPower]
  simp only [hone, add_comm (1 : ℝ), show -s + 1 = 1 - s by ring] at h
  have hquot (v : ℂ) : (v - 1) / (1 - s) = (1 - v) / (s - 1) := by
    rw [show 1 - s = -(s - 1) by ring, div_neg]
    ring
  rw [hquot] at h
  calc
    _ = _ := h
    _ = _ := by ring

/-- First identify the actual source where its Dirichlet series genuinely converges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4543990a599ffb9fb6e6cb0f2b32c75a89bc7b5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
