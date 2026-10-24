# Prod.locallyConvexSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:919befbc0c2f9516ed2593b757c49f2bb8cf7455efc98df0210d4e7be69178aa",
  "kind": "instance",
  "lexical_name": "Prod.locallyConvexSpace",
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
  "slug": "prod-locallyconvexspace--801ea85ba161620495e6f6c4",
  "source": {
    "blob": "65ebec5528d8b0a3b21a702d00385e20e4ae13d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 224,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variant8d0eab8efe29b4cadd38fee709e6e70c679a0e6e20082b85e66f4bdf6433a947.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:801ea85ba161620495e6f6c44a34ec73c7afc2ce5bb159603b8d8ead0d778db9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LocallyConvex/Variant8d0eab8efe29b4cadd38fee709e6e70c679a0e6e20082b85e66f4bdf6433a947.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:919befbc0c2f9516ed2593b757c49f2bb8cf7455efc98df0210d4e7be69178aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.locallyConvexSpace [TopologicalSpace E] [TopologicalSpace F] [LocallyConvexSpace 𝕜 E]
    [LocallyConvexSpace 𝕜 F] : LocallyConvexSpace 𝕜 (E × F) :=
  .inf (.induced (LinearMap.fst _ _ _)) (.induced (LinearMap.snd _ _ _))

end LatticeOps

section LinearOrderedSemiring

/-- A linear ordered semiring is a locally convex space over itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LocallyConvex/Variant8d0eab8efe29b4cadd38fee709e6e70c679a0e6e20082b85e66f4bdf6433a947.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variant8d0eab8efe29b4cadd38fee709e6e70c679a0e6e20082b85e66f4bdf6433a947.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65ebec5528d8b0a3b21a702d00385e20e4ae13d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
