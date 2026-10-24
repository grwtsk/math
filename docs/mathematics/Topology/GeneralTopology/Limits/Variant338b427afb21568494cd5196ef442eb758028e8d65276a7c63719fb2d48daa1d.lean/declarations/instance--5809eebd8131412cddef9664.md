# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06e9bdd28437fc5cd0887140a702937901998cb3d69c04d7c8b15016804a280f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--5809eebd8131412cddef9664",
  "source": {
    "blob": "493c277fecc94ee98f27892b1872aa0df203ed68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5809eebd8131412cddef96643727eab0a1619da4b271f283fb1d5f632d8046e1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06e9bdd28437fc5cd0887140a702937901998cb3d69c04d7c8b15016804a280f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (P) [HasExplicitFiniteCoproducts.{0} P] :
    PreservesFiniteCoproducts (compHausLikeToTop P) := by
  refine ⟨fun _ ↦ ⟨fun {F} ↦ ?_⟩⟩
  suffices PreservesColimit (Discrete.functor (F.obj ∘ Discrete.mk)) (compHausLikeToTop P) from
    preservesColimit_of_iso_diagram _ Discrete.natIsoFunctor.symm
  apply preservesColimit_of_preserves_colimit_cocone (CompHausLike.finiteCoproduct.isColimit _)
  exact TopCat.sigmaCofanIsColimit _

/-- The functor to another `CompHausLike` preserves finite coproducts if they exist. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `493c277fecc94ee98f27892b1872aa0df203ed68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
