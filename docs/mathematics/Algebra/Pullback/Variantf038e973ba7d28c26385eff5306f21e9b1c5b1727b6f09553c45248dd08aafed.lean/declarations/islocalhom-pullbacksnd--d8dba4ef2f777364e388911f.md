# isLocalHom_pullbackSnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:957948ee718e1a3d809d08cc36022e013848cf3489383bbcdde9e41b31e3a888",
  "kind": "instance",
  "lexical_name": "isLocalHom_pullbackSnd",
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
  "slug": "islocalhom-pullbacksnd--d8dba4ef2f777364e388911f",
  "source": {
    "blob": "6781df6f3d1ac6c59b5a0958717848d77fc36c5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 78,
    "path": "GRWTSK/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8dba4ef2f777364e388911f80e94b682aaeccc4e5af159c4d71cc2fac0ae6c5",
  "verification": {
    "reference": "docs/verification/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:957948ee718e1a3d809d08cc36022e013848cf3489383bbcdde9e41b31e3a888`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isLocalHom_pullbackSnd (f : R →+* T) (g : S →+* T) [IsLocalHom f] :
    IsLocalHom (f.pullbackSnd g) where
  map_nonunit := fun ⟨⟨_, _⟩, h_in⟩ ha ↦
    (isUnit_pullback_mk_iff f g h_in).mpr ⟨isUnit_of_map_unit f _ (h_in.symm ▸ ha.map g), ha⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6781df6f3d1ac6c59b5a0958717848d77fc36c5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
