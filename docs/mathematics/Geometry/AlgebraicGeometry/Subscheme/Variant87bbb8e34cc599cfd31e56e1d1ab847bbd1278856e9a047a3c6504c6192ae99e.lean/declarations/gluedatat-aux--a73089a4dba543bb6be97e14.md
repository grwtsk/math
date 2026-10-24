# glueDataT'Aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0ba4fc2f87842215739920584b4bc123b786577c13a8912dd2932f6f5bd4b09",
  "kind": "def",
  "lexical_name": "glueDataT'Aux",
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
  "slug": "gluedatat-aux--a73089a4dba543bb6be97e14",
  "source": {
    "blob": "f9f6f205d5b57b4704bac886301b2187c990b442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 252,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant87bbb8e34cc599cfd31e56e1d1ab847bbd1278856e9a047a3c6504c6192ae99e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a73089a4dba543bb6be97e14c5e8e4f98e77ce690863047b7c7c276a0da89395",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Subscheme/Variant87bbb8e34cc599cfd31e56e1d1ab847bbd1278856e9a047a3c6504c6192ae99e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0ba4fc2f87842215739920584b4bc123b786577c13a8912dd2932f6f5bd4b09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def glueDataT'Aux (U V W U₀ : X.affineOpens) (hU₀ : U.1 ⊓ W ≤ U₀) :
    pullback
      (pullback.fst _ _ : I.glueDataObjPullback U V ⟶ _)
      (pullback.fst _ _ : I.glueDataObjPullback U W ⟶ _) ⟶ I.glueDataObjPullback V U₀ :=
  pullback.lift
    (pullback.fst _ _ ≫ I.glueDataT U V ≫ pullback.fst _ _)
    (IsOpenImmersion.lift (V.1 ⊓ U₀.1).ι
      (pullback.fst _ _ ≫ pullback.fst _ _ ≫ I.glueDataObjι U ≫ U.1.ι) (by
      simp only [Scheme.Opens.range_ι, TopologicalSpace.Opens.coe_inf, Set.subset_inter_iff]
      constructor
      · rw [pullback.condition_assoc (f := I.glueDataObjι U), X.homOfLE_ι,
          ← Category.assoc, Scheme.Hom.comp_base, TopCat.coe_comp]
        exact (Set.range_comp_subset_range _ _).trans (by simp)
      · rw [pullback.condition_assoc, pullback.condition_assoc, X.homOfLE_ι,
          ← Category.assoc, Scheme.Hom.comp_base, TopCat.coe_comp]
        exact (Set.range_comp_subset_range _ _).trans (by simpa using! hU₀))) (by
      rw [← cancel_mono (Scheme.Opens.ι _)]
      simp [pullback.condition_assoc])

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Subscheme/Variant87bbb8e34cc599cfd31e56e1d1ab847bbd1278856e9a047a3c6504c6192ae99e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant87bbb8e34cc599cfd31e56e1d1ab847bbd1278856e9a047a3c6504c6192ae99e.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9f6f205d5b57b4704bac886301b2187c990b442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
