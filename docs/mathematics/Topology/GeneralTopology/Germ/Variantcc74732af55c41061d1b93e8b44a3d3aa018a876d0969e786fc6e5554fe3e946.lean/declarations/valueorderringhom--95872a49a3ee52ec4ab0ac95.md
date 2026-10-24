# valueOrderRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6aa9c7479b67083b21cc335253fa398119230964fdf40bd91784305bfbae4da7",
  "kind": "def",
  "lexical_name": "valueOrderRingHom",
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
  "slug": "valueorderringhom--95872a49a3ee52ec4ab0ac95",
  "source": {
    "blob": "5068a55a9fccc919dfb3ece6352feaaed5302e9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/Germ/Variantcc74732af55c41061d1b93e8b44a3d3aa018a876d0969e786fc6e5554fe3e946.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95872a49a3ee52ec4ab0ac95683127633d639bb02610e238236e432d3d578493",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Germ/Variantcc74732af55c41061d1b93e8b44a3d3aa018a876d0969e786fc6e5554fe3e946.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6aa9c7479b67083b21cc335253fa398119230964fdf40bd91784305bfbae4da7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def valueOrderRingHom {X E : Type*} [Semiring E] [PartialOrder E] [TopologicalSpace X] {x : X} :
    Germ (𝓝 x) E →+*o E where
  __ := Filter.Germ.valueRingHom
  monotone' := fun φ ψ ↦
  Germ.inductionOn φ fun _ ↦ Germ.inductionOn ψ fun _ h ↦ h.self_of_nhds

end Filter.Germ

section RestrictGermPredicate
/-- Given a predicate on germs `P : Π x : X, germ (𝓝 x) Y → Prop` and `A : set X`,
build a new predicate on germs `RestrictGermPredicate P A` such that
`(∀ x, RestrictGermPredicate P A x f) ↔ ∀ᶠ x near A, P x f`, see
`forall_restrictGermPredicate_iff` for this equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Germ/Variantcc74732af55c41061d1b93e8b44a3d3aa018a876d0969e786fc6e5554fe3e946.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Germ/Variantcc74732af55c41061d1b93e8b44a3d3aa018a876d0969e786fc6e5554fe3e946.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5068a55a9fccc919dfb3ece6352feaaed5302e9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
