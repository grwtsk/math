# fintypeRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c116b6d66b8b177f2ee72ec1cc6a7647fc64c184099f40fa94a647b699188b9",
  "kind": "instance",
  "lexical_name": "fintypeRange",
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
  "slug": "fintyperange--41f5a3bfb800828318ea44eb",
  "source": {
    "blob": "679066e4d247c6bf1f5890a55c46e67e2ca0d554",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 315,
    "path": "GRWTSK/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41f5a3bfb800828318ea44eb3eff58d7e7ce7d5d8bcd8596cc0b3af39adc54bb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c116b6d66b8b177f2ee72ec1cc6a7647fc64c184099f40fa94a647b699188b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance fintypeRange [Fintype G] [DecidableEq N] (f : G →* N) : Fintype (range f) :=
  Set.fintypeRange f
#align monoid_hom.fintype_range MonoidHom.fintypeRange
#align add_monoid_hom.fintype_range AddMonoidHom.fintypeRange

end MonoidHom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679066e4d247c6bf1f5890a55c46e67e2ca0d554` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
