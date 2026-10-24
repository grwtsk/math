# Sites.pullbackPushforwardAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9408206b33c959d2c529ab8582f21dd0c80935fa721e9487cf7ff896c22f2071",
  "kind": "def",
  "lexical_name": "Sites.pullbackPushforwardAdjunction",
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
  "slug": "sites-pullbackpushforwardadjunction--289da1daef5e88010acffad6",
  "source": {
    "blob": "ad52a202dc10e3e2377590fe6d9f4c7381be967b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant92d8f547dccd9501f80b2c280ec513138c819ebd0c11b4c343b63966b572e30c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:289da1daef5e88010acffad681c42e80fd2b101d1d50a0519b7931f3c895baf4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant92d8f547dccd9501f80b2c280ec513138c819ebd0c11b4c343b63966b572e30c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9408206b33c959d2c529ab8582f21dd0c80935fa721e9487cf7ff896c22f2071`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Sites.pullbackPushforwardAdjunction {G : C ⥤ D} (hG₁ : CompatiblePreserving K G)
    (hG₂ : CoverPreserving J K G) : Sites.pushforward A J K G ⊣ Sites.pullback A hG₁ hG₂ :=
  ((Lan.adjunction A G.op).comp (sheafificationAdjunction K A)).restrictFullyFaithful
    (sheafToPresheaf J A) (𝟭 _)
    (NatIso.ofComponents fun _ => Iso.refl _)
    (NatIso.ofComponents fun _ => Iso.refl _)
#align category_theory.sites.pullback_pushforward_adjunction CategoryTheory.Sites.pullbackPushforwardAdjunction

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant92d8f547dccd9501f80b2c280ec513138c819ebd0c11b4c343b63966b572e30c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant92d8f547dccd9501f80b2c280ec513138c819ebd0c11b4c343b63966b572e30c.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad52a202dc10e3e2377590fe6d9f4c7381be967b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
