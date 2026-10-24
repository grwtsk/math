# tendstoIccClassNhdsPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c12380d97fefe6fe9c27ac92b4948b8c7b006b1a596c30a73da639c536406cd",
  "kind": "instance",
  "lexical_name": "tendstoIccClassNhdsPi",
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
  "slug": "tendstoiccclassnhdspi--d5df22ceb6d15e375f66da22",
  "source": {
    "blob": "ebab0ef499c76aefe53ee57a5050f62c02a43f3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 178,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcb84b5bae2d3c4c9cd185d2461999618ae620513661bf919c8125a563ed0c37c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5df22ceb6d15e375f66da2238333e84117e82cf3da5be5a6b7e3aec539597f6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcb84b5bae2d3c4c9cd185d2461999618ae620513661bf919c8125a563ed0c37c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c12380d97fefe6fe9c27ac92b4948b8c7b006b1a596c30a73da639c536406cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance tendstoIccClassNhdsPi {ι : Type*} {α : ι → Type*} [∀ i, Preorder (α i)]
    [∀ i, TopologicalSpace (α i)] [∀ i, OrderTopology (α i)] (f : ∀ i, α i) :
    TendstoIxxClass Icc (𝓝 f) (𝓝 f) := by
  constructor
  conv in (𝓝 f).smallSets => rw [nhds_pi, Filter.pi]
  simp only [smallSets_iInf, smallSets_comap_eq_comap_image, tendsto_iInf, tendsto_comap_iff]
  intro i
  have : Tendsto (fun g : ∀ i, α i => g i) (𝓝 f) (𝓝 (f i)) := (continuous_apply i).tendsto f
  refine (this.comp tendsto_fst).Icc (this.comp tendsto_snd) |>.smallSets_mono ?_
  filter_upwards [] using fun ⟨f, g⟩ ↦ image_subset_iff.mpr fun p hp ↦ ⟨hp.1 i, hp.2 i⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcb84b5bae2d3c4c9cd185d2461999618ae620513661bf919c8125a563ed0c37c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcb84b5bae2d3c4c9cd185d2461999618ae620513661bf919c8125a563ed0c37c.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebab0ef499c76aefe53ee57a5050f62c02a43f3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
