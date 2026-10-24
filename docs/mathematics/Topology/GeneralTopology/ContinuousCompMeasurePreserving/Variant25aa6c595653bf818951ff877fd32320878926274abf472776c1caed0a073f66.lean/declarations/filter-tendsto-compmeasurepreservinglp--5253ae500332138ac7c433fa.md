# Filter.Tendsto.compMeasurePreservingLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc22e0c7-2b21-d0b7-5860-5727c5f188a6",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.compMeasurePreservingLp",
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
  "slug": "filter-tendsto-compmeasurepreservinglp--5253ae500332138ac7c433fa",
  "source": {
    "blob": "585d5288dd3acf7cc0fed3c1dcfe5d7c28ea251c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5253ae500332138ac7c433fa0215f4ccbc92b069aaf7acbc9248456de021d05f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc22e0c7-2b21-d0b7-5860-5727c5f188a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.compMeasurePreservingLp {α : Type*} {l : Filter α}
    {f : α → Lp E p ν} {f₀ : Lp E p ν} {g : α → C(X, Y)} {g₀ : C(X, Y)}
    (hf : Tendsto f l (𝓝 f₀)) (hg : Tendsto g l (𝓝 g₀))
    (hgm : ∀ a, MeasurePreserving (g a) μ ν) (hgm₀ : MeasurePreserving g₀ μ ν) (hp : p ≠ ∞) :
    Tendsto (fun a ↦ Lp.compMeasurePreserving (g a) (hgm a) (f a)) l
      (𝓝 (Lp.compMeasurePreserving g₀ hgm₀ f₀)) := by
  have := (Lp.compMeasurePreserving_continuous μ ν E hp).tendsto ⟨f₀, g₀, hgm₀⟩
  replace hg : Tendsto (fun a ↦ ⟨g a, hgm a⟩ : α → {g : C(X, Y) // MeasurePreserving g μ ν})
      l (𝓝 ⟨g₀, hgm₀⟩) :=
    tendsto_subtype_rng.2 hg
  convert! this.comp (hf.prodMk_nhds hg)

variable {Z : Type*} [TopologicalSpace Z] {f : Z → Lp E p ν} {g : Z → C(X, Y)} {s : Set Z} {z : Z}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `585d5288dd3acf7cc0fed3c1dcfe5d7c28ea251c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
