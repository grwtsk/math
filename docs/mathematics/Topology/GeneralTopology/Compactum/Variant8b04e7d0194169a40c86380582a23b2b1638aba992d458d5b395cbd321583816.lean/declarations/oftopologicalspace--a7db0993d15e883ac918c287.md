# ofTopologicalSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01e38603857f785dc660b518ccf95019f43f3d72277b46beb9f38fe2a845691a",
  "kind": "def",
  "lexical_name": "ofTopologicalSpace",
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
  "slug": "oftopologicalspace--a7db0993d15e883ac918c287",
  "source": {
    "blob": "9f8397ee43da0fd0078057cda679c4ca6ba34b53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 367,
    "path": "GRWTSK/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7db0993d15e883ac918c287d145a7d080ccae5fca65ffa1decad4af6253b674",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01e38603857f785dc660b518ccf95019f43f3d72277b46beb9f38fe2a845691a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofTopologicalSpace (X : Type*) [TopologicalSpace X] [CompactSpace X]
    [T2Space X] : Compactum where
  A := X
  a := Ultrafilter.lim
  unit := by
    ext x
    exact lim_eq (pure_le_nhds _)
  assoc := by
    ext FF
    change Ultrafilter (Ultrafilter X) at FF
    set x := (Ultrafilter.map Ultrafilter.lim FF).lim with c1
    have c2 : ∀ (U : Set X) (F : Ultrafilter X), F.lim ∈ U → IsOpen U → U ∈ F := by
      intro U F h1 hU
      exact isOpen_iff_ultrafilter.mp hU _ h1 _ (Ultrafilter.le_nhds_lim _)
    have c3 : ↑(Ultrafilter.map Ultrafilter.lim FF) ≤ 𝓝 x := by
      rw [le_nhds_iff]
      intro U hx hU
      exact mem_coe.2 (c2 _ _ (by rwa [← c1]) hU)
    have c4 : ∀ U : Set X, x ∈ U → IsOpen U → { G : Ultrafilter X | U ∈ G } ∈ FF := by
      intro U hx hU
      suffices Ultrafilter.lim ⁻¹' U ∈ FF by
        apply mem_of_superset this
        intro P hP
        exact c2 U P hP hU
      exact @c3 U (IsOpen.mem_nhds hU hx)
    apply lim_eq
    rw [le_nhds_iff]
    exact c4

/-- Any continuous map between Compacta is a morphism of compacta. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8397ee43da0fd0078057cda679c4ca6ba34b53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
