# σ_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ead6ec8-af37-49b3-3e9d-30fa798b10dc",
  "kind": "lemma",
  "lexical_name": "σ_eventuallyEq",
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
  "slug": "eventuallyeq--d1d3f8fb91645e447d3f7025",
  "source": {
    "blob": "6d7ec8a70baea189808f2b15e243c88c103ce139",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/ProperAction/Varianta4f8369b1d9df9f4eb625b0c86bffc53bd767773949c0e70ef8827b6aa18fd2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1d3f8fb91645e447d3f7025617adcc734040a184dd791f9198ad2a9b9871601",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProperAction/Varianta4f8369b1d9df9f4eb625b0c86bffc53bd767773949c0e70ef8827b6aa18fd2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ead6ec8-af37-49b3-3e9d-30fa798b10dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma σ_eventuallyEq (g : GL (Fin 2) ℝ) : σ =ᶠ[𝓝 g] fun _ ↦ σ g := by
  by_cases hg : 0 < g.det.val
  · suffices {h | 0 < h.det.val} ∈ 𝓝 g by
      filter_upwards [this] with h hh using by simp only [σ, hh, ↓reduceIte, hg]
    exact isOpen_Ioi (a := (0 : ℝ)) |>.preimage (by fun_prop) |>.mem_nhds hg
  · suffices {h | ¬0 < h.det.val} ∈ 𝓝 g by
      filter_upwards [this] with h hh using by simp only [σ, hh, ↓reduceIte, hg]
    simp only [not_lt, le_iff_lt_or_eq, Units.ne_zero, or_false] at hg ⊢
    exact isOpen_Iio (a := (0 : ℝ)) |>.preimage (by fun_prop) |>.mem_nhds hg

/-- The action of `GL(2, ℝ)` on `ℍ` is jointly continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProperAction/Varianta4f8369b1d9df9f4eb625b0c86bffc53bd767773949c0e70ef8827b6aa18fd2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProperAction/Varianta4f8369b1d9df9f4eb625b0c86bffc53bd767773949c0e70ef8827b6aa18fd2b.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d7ec8a70baea189808f2b15e243c88c103ce139` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
