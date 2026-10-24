# Filter.Tendsto.inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c4508c4-a0f3-b1b3-4019-89b9be8d8dbf",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.inversion",
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
  "slug": "filter-tendsto-inversion--43a7dcb54ea9c39c524832ce",
  "source": {
    "blob": "34a6612d0f7fe41e7e4ca5ce5e38b650d52a4e22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd66af030b45e8fb77b694f82ffd5f0b50c3d2f2303846974824cc839c5ce975f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43a7dcb54ea9c39c524832cec225375edf57ea9f08b888fc37bbb675692ed0b7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd66af030b45e8fb77b694f82ffd5f0b50c3d2f2303846974824cc839c5ce975f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c4508c4-a0f3-b1b3-4019-89b9be8d8dbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Filter.Tendsto.inversion {α : Type*} {x c : P} {R : ℝ} {l : Filter α}
    {fc fx : α → P} {fR : α → ℝ} (hc : Tendsto fc l (𝓝 c)) (hR : Tendsto fR l (𝓝 R))
    (hx : Tendsto fx l (𝓝 x)) (hne : x ≠ c) :
    Tendsto (fun a ↦ inversion (fc a) (fR a) (fx a)) l (𝓝 (inversion c R x)) :=
  (((hR.div (hx.dist hc) <| dist_ne_zero.2 hne).pow 2).smul (hx.vsub hc)).vadd hc

variable {X : Type*} [TopologicalSpace X] {c x : X → P} {R : X → ℝ} {a₀ : X} {s : Set X}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd66af030b45e8fb77b694f82ffd5f0b50c3d2f2303846974824cc839c5ce975f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd66af030b45e8fb77b694f82ffd5f0b50c3d2f2303846974824cc839c5ce975f.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34a6612d0f7fe41e7e4ca5ce5e38b650d52a4e22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
