# map_add_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0acd1449-1270-2c31-2bd5-054492bad232",
  "kind": "theorem",
  "lexical_name": "map_add_univ",
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
  "slug": "map-add-univ--d3c80c785b319f6c493de74a",
  "source": {
    "blob": "9fe836f6d48a6b0a8671cee43786284259eace8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 407,
    "path": "GRWTSK/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3c80c785b319f6c493de74ad00ca2c5aba52fa98ad5fd556548e8260998e5d7",
  "verification": {
    "reference": "docs/verification/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0acd1449-1270-2c31-2bd5-054492bad232`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_add_univ [DecidableEq ι] [Fintype ι] (m m' : ∀ i, M₁ i) :
    f (m + m') = ∑ s : Finset ι, f (s.piecewise m m') :=
  f.toMultilinearMap.map_add_univ _ _
#align continuous_multilinear_map.map_add_univ ContinuousMultilinearMap.map_add_univ

section ApplySum

open Fintype Finset

variable {α : ι → Type*} [Fintype ι] (g : ∀ i, α i → M₁ i) (A : ∀ i, Finset (α i))

/-- If `f` is continuous multilinear, then `f (Σ_{j₁ ∈ A₁} g₁ j₁, ..., Σ_{jₙ ∈ Aₙ} gₙ jₙ)` is the
sum of `f (g₁ (r 1), ..., gₙ (r n))` where `r` ranges over all functions with `r 1 ∈ A₁`, ...,
`r n ∈ Aₙ`. This follows from multilinearity by expanding successively with respect to each
coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fe836f6d48a6b0a8671cee43786284259eace8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
