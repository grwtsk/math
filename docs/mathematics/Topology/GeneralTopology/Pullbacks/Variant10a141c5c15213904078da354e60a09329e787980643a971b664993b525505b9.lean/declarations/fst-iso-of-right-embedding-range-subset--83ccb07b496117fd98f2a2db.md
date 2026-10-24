# fst_iso_of_right_embedding_range_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c22b12e5-7826-d8c6-249e-59fb66988875",
  "kind": "theorem",
  "lexical_name": "fst_iso_of_right_embedding_range_subset",
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
  "slug": "fst-iso-of-right-embedding-range-subset--83ccb07b496117fd98f2a2db",
  "source": {
    "blob": "de082675fe83066fa870e98ba997eab77950dedb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 335,
    "path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83ccb07b496117fd98f2a2db205f3d7ae6e929500e2a7a4546b9792fbc9193d9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c22b12e5-7826-d8c6-249e-59fb66988875`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fst_iso_of_right_embedding_range_subset {X Y S : TopCat.{u}} (f : X ⟶ S) {g : Y ⟶ S}
    (hg : IsEmbedding g) (H : Set.range f ⊆ Set.range g) :
    IsIso (pullback.fst f g) := by
  let esto : (pullback f g : TopCat) ≃ₜ X :=
    (fst_isEmbedding_of_right f hg).toHomeomorph.trans
      { toFun := Subtype.val
        invFun := fun x =>
          ⟨x, by
            rw [pullback_fst_range]
            exact ⟨_, (H (Set.mem_range_self x)).choose_spec.symm⟩⟩ }
  convert! (isoOfHomeo esto).isIso_hom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de082675fe83066fa870e98ba997eab77950dedb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
