# source_image_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6c79db4-2574-10f0-4ffa-bdf862872a80",
  "kind": "theorem",
  "lexical_name": "source_image_bound",
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
  "slug": "source-image-bound--0c211f6d7cada0c7d48c4ab2",
  "source": {
    "blob": "ad9099397ecd96329db007f67ec1f3e5d58eddf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c211f6d7cada0c7d48c4ab2487b0289ea741d3b3cf0de517f18e91d4a01c01e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6c79db4-2574-10f0-4ffa-bdf862872a80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_image_bound {d : EdgeData}
    (hg : RationalPolePatch.check d.center d.inner d.outer d.value = true)
    (he : Holds d.value (poleNormalizedZeta (toComplex d.center)))
    {z : ℂ} (hz : z ∈ closedBall (toComplex d.center) (d.inner : ℝ)) :
    ‖poleNormalizedZeta z - toComplex d.value.mid‖ ≤ (imageRadius d : ℝ) := by
  calc
    _ ≤ ‖poleNormalizedZeta z - poleNormalizedZeta (toComplex d.center)‖ +
        ‖poleNormalizedZeta (toComplex d.center) - toComplex d.value.mid‖ := by
      simpa only [dist_eq_norm] using dist_triangle (poleNormalizedZeta z)
        (poleNormalizedZeta (toComplex d.center)) (toComplex d.value.mid)
    _ ≤ (RationalPolePatch.slopeBound d.center d.inner d.outer : ℝ) * (d.inner : ℝ) +
        (d.value.rad : ℝ) := add_le_add (disk_variation hg hz) he
    _ = _ := by simp only [imageRadius, Rat.cast_add, Rat.cast_mul]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad9099397ecd96329db007f67ec1f3e5d58eddf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
