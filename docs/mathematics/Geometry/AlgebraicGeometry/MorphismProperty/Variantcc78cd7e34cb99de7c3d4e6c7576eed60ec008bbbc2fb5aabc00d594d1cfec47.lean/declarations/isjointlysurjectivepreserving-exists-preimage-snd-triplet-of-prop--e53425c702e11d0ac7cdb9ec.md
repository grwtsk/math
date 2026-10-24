# IsJointlySurjectivePreserving.exists_preimage_snd_triplet_of_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3405bad2-dada-5228-16f1-9e2d6a0197b0",
  "kind": "lemma",
  "lexical_name": "IsJointlySurjectivePreserving.exists_preimage_snd_triplet_of_prop",
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
  "slug": "isjointlysurjectivepreserving-exists-preimage-snd-triplet-of-prop--e53425c702e11d0ac7cdb9ec",
  "source": {
    "blob": "714c36ff47e5a20cde528e3faa64725d413221d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 200,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e53425c702e11d0ac7cdb9ecaefd9068c3300987bcc08cf918825667a3808737",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3405bad2-dada-5228-16f1-9e2d6a0197b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsJointlySurjectivePreserving.exists_preimage_snd_triplet_of_prop
    [IsJointlySurjectivePreserving P] {X Y S : Scheme.{u}} {f : X ⟶ S} {g : Y ⟶ S} [HasPullback f g]
    (hf : P f) (x : X) (y : Y) (h : f.base x = g.base y) :
    ∃ a : ↑(pullback f g), (pullback.snd f g).base a = y := by
  let iso := pullbackSymmetry f g
  haveI : HasPullback g f := hasPullback_symmetry f g
  obtain ⟨a, ha⟩ := exists_preimage_fst_triplet_of_prop hf y x h.symm
  use (pullbackSymmetry f g).inv.base a
  rwa [← Scheme.comp_base_apply, pullbackSymmetry_inv_comp_snd]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `714c36ff47e5a20cde528e3faa64725d413221d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
