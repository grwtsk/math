# sheafOfModulesEquivOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ddda7b48b1ab498e5db36b0b6c5a78b190de5b020c8a6d516277b81d9ff566e",
  "kind": "def",
  "lexical_name": "sheafOfModulesEquivOver",
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
  "slug": "sheafofmodulesequivover--1c2fd4e9c800193951c8ce85",
  "source": {
    "blob": "d24a9729a2148f16f437ddf892c9eb45c6eee0cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/Module/Variant4dc7b4f786c4e61a91fe585c9b0a43513e130ccc776a024af398e67ddd30864a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c2fd4e9c800193951c8ce855655389c0497bfd9501541538ecc0993276e9bba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Module/Variant4dc7b4f786c4e61a91fe585c9b0a43513e130ccc776a024af398e67ddd30864a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ddda7b48b1ab498e5db36b0b6c5a78b190de5b020c8a6d516277b81d9ff566e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sheafOfModulesEquivOver :
    SheafOfModules.{w} (R.over U) ≌ SheafOfModules.{w} (U.sheafRestrict.obj R) := by
  refine SheafOfModules.pushforwardPushforwardEquivalence (eqv := U.overEquivalence.symm)
    (U.overPullbackSheafEquivOver.app _).inv (U.sheafRestrictSheafEquivOver.app _).inv rfl ?_
  ext : 2
  simp [overPullbackSheafEquivOver, sheafRestrictSheafEquivOver, eqToHom_map, overEquivalence,
    IsOpenMap.functor]

/-- `sheafOfModulesEquivOver` takes `R.over U` to `R |_ U`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Module/Variant4dc7b4f786c4e61a91fe585c9b0a43513e130ccc776a024af398e67ddd30864a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Module/Variant4dc7b4f786c4e61a91fe585c9b0a43513e130ccc776a024af398e67ddd30864a.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d24a9729a2148f16f437ddf892c9eb45c6eee0cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
