# eventual_positive_square_floor_excludes_vanishing_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef85fd96-3a22-a538-4497-fc14ba4b8d27",
  "kind": "theorem",
  "lexical_name": "eventual_positive_square_floor_excludes_vanishing_factor",
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
  "slug": "eventual-positive-square-floor-excludes-vanishing-factor--55cc67aa6b51ef35e6295128",
  "source": {
    "blob": "5ec6029ba18c5b1c02fbb40a291ca6019bf4b649",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55cc67aa6b51ef35e62951285f5d93c7e55f4fbdb78ff411f08118dccd9d5e45",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef85fd96-3a22-a538-4497-fc14ba4b8d27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventual_positive_square_floor_excludes_vanishing_factor
    {I f : ℝ → ℝ} {c : ℝ} (hc : 0 < c)
    (hlower : ∀ᶠ X : ℝ in atTop, c * X ^ 2 ≤ I X)
    (hf : Tendsto f atTop (𝓝 0)) :
    ¬ ∀ᶠ X : ℝ in atTop, I X ≤ f X * X ^ 2 := by
  intro hu
  have ht := hf.eventually_lt_const hc
  have hfalse : ∀ᶠ X : ℝ in atTop, False := by
    filter_upwards [hlower, hu, ht, eventually_gt_atTop (0 : ℝ)] with X hl hu ht hX
    have hp : 0 < X ^ 2 := pow_pos hX _
    have he : c ≤ f X := (mul_le_mul_iff_left₀ hp).mp (hl.trans hu)
    exact (not_lt_of_ge he) ht
  obtain ⟨X, hX⟩ := hfalse.exists
  exact hX

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ec6029ba18c5b1c02fbb40a291ca6019bf4b649` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
