# tendstoIccClassNhdsPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6534f14bb56403e411609114ac645ee52d40a813913a242683d1956bb6e622f",
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
  "slug": "tendstoiccclassnhdspi--fe359cfa872437a13650c45a",
  "source": {
    "blob": "152453ea8caa12862879e967ece65a996e5623c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 995,
    "line": 982,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4354cc1bde5c9c20680af36761b55658eb5cc1bc754ac22da07d82c717d1f050.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe359cfa872437a13650c45a7fef40d84f04d8af1363099dc9ab3dff95b9f8f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4354cc1bde5c9c20680af36761b55658eb5cc1bc754ac22da07d82c717d1f050.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6534f14bb56403e411609114ac645ee52d40a813913a242683d1956bb6e622f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 982–995.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance tendstoIccClassNhdsPi {ι : Type*} {α : ι → Type*} [∀ i, Preorder (α i)]
    [∀ i, TopologicalSpace (α i)] [∀ i, OrderTopology (α i)] (f : ∀ i, α i) :
    TendstoIxxClass Icc (𝓝 f) (𝓝 f) := by
  constructor
  conv in (𝓝 f).smallSets => rw [nhds_pi, Filter.pi]
  simp only [smallSets_iInf, smallSets_comap, tendsto_iInf, tendsto_lift', (· ∘ ·),
    mem_powerset_iff]
  intro i s hs
  have : Tendsto (fun g : ∀ i, α i => g i) (𝓝 f) (𝓝 (f i)) := (continuous_apply i).tendsto f
  refine' (tendsto_lift'.1 ((this.comp tendsto_fst).Icc (this.comp tendsto_snd)) s hs).mono _
  exact fun p hp g hg => hp ⟨hg.1 _, hg.2 _⟩
#align tendsto_Icc_class_nhds_pi tendstoIccClassNhdsPi

-- porting note: new lemma
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4354cc1bde5c9c20680af36761b55658eb5cc1bc754ac22da07d82c717d1f050.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4354cc1bde5c9c20680af36761b55658eb5cc1bc754ac22da07d82c717d1f050.lean#L982).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152453ea8caa12862879e967ece65a996e5623c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
