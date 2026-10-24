# contDiffAt_finsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61f43fd6-10c5-28a3-9e1a-6fcfc6119bdb",
  "kind": "theorem",
  "lexical_name": "contDiffAt_finsum",
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
  "slug": "contdiffat-finsum--ed3916d5ce9125bdf5b15729",
  "source": {
    "blob": "8ad678ee53933a200bc5596ae5ba6c8963edf22d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 214,
    "path": "GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed3916d5ce9125bdf5b157294d52294ad717a0e7817aa2ff5afee0e4b6f9a2c4",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61f43fd6-10c5-28a3-9e1a-6fcfc6119bdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffAt_finsum {s : Set E} (f : SmoothPartitionOfUnity ι 𝓘(ℝ, E) E s) {x₀ : E}
    {g : ι → E → F} (hφ : ∀ i, x₀ ∈ tsupport (f i) → ContDiffAt ℝ n (g i) x₀) :
    ContDiffAt ℝ n (fun x ↦ ∑ᶠ i, f i x • g i x) x₀ := by
  simp only [← contMDiffAt_iff_contDiffAt] at *
  exact f.contMDiffAt_finsum hφ

section finsupport

variable {s : Set M} (ρ : SmoothPartitionOfUnity ι I M s) (x₀ : M)

/-- The support of a smooth partition of unity at a point `x₀` as a `Finset`.
This is the set of `i : ι` such that `x₀ ∈ support f i`, i.e. `f i x₀ ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ad678ee53933a200bc5596ae5ba6c8963edf22d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
