# Disk.coordinate_reach_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf090c86-e85e-fd90-28fa-6c68241232de",
  "kind": "lemma",
  "lexical_name": "Disk.coordinate_reach_bounds",
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
  "slug": "disk-coordinate-reach-bounds--06428f48ef72e8c73e2014d3",
  "source": {
    "blob": "629d134563d63cdbbcd90ac679c388691f45444f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06428f48ef72e8c73e2014d31e6aa485337692d93674178da9de8dc90c5f4774",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf090c86-e85e-fd90-28fa-6c68241232de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Disk.coordinate_reach_bounds (d : Disk) (b : Rectangle) {z : ℂ}
    (hz : z ∈ b.carrier) :
    |z.re - (d.re : ℝ)| ≤ (d.realReach b : ℝ) ∧
      |z.im - (d.im : ℝ)| ≤ (d.imagReach b : ℝ) := by
  have hxl : |(b.left : ℝ) - (d.re : ℝ)| ≤ (d.realReach b : ℝ) := by
    exact_mod_cast (le_max_left |b.left - d.re| |b.right - d.re|)
  have hxr : |(b.right : ℝ) - (d.re : ℝ)| ≤ (d.realReach b : ℝ) := by
    exact_mod_cast (le_max_right |b.left - d.re| |b.right - d.re|)
  have hyb : |(b.bottom : ℝ) - (d.im : ℝ)| ≤ (d.imagReach b : ℝ) := by
    exact_mod_cast (le_max_left |b.bottom - d.im| |b.top - d.im|)
  have hyt : |(b.top : ℝ) - (d.im : ℝ)| ≤ (d.imagReach b : ℝ) := by
    exact_mod_cast (le_max_right |b.bottom - d.im| |b.top - d.im|)
  exact ⟨(abs_sub_le_endpoint_max hz.1 hz.2.1).trans (max_le hxl hxr),
    (abs_sub_le_endpoint_max hz.2.2.1 hz.2.2.2).trans (max_le hyb hyt)⟩

/-- A squared comparison proves the actual Euclidean norm bound, without sqrt evaluation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `629d134563d63cdbbcd90ac679c388691f45444f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
