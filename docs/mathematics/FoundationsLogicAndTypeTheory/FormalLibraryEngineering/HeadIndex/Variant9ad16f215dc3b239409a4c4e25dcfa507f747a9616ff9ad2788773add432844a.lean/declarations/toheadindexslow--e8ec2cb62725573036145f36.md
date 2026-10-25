# toHeadIndexSlow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:916c7e4fbb6c88efbdab8037e8e18a6e18924523e1e6c7a2e70b3e2deb63cb3c",
  "kind": "def",
  "lexical_name": "toHeadIndexSlow",
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
  "slug": "toheadindexslow--e8ec2cb62725573036145f36",
  "source": {
    "blob": "8eeda87519bbe7952a6b224062cb68968a3c5afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeadIndex/Variant9ad16f215dc3b239409a4c4e25dcfa507f747a9616ff9ad2788773add432844a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8ec2cb62725573036145f36dddc7eb92a58c4536481ab81382a6c1d36126d03",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeadIndex/Variant9ad16f215dc3b239409a4c4e25dcfa507f747a9616ff9ad2788773add432844a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:916c7e4fbb6c88efbdab8037e8e18a6e18924523e1e6c7a2e70b3e2deb63cb3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def toHeadIndexSlow : Expr → HeadIndex
  | mvar mvarId             => HeadIndex.mvar mvarId
  | fvar fvarId             => HeadIndex.fvar fvarId
  | const constName _       => HeadIndex.const constName
  | proj structName idx _   => HeadIndex.proj structName idx
  | sort _                  => HeadIndex.sort
  | lam ..                  => HeadIndex.lam
  | forallE ..              => HeadIndex.forallE
  | lit v                   => HeadIndex.lit v
  | app f _                 => toHeadIndexSlow f
  | letE _ _ v b _          => toHeadIndexSlow (b.instantiate1 v)
  | mdata _ e               => toHeadIndexSlow e
  | _                       => panic! "unexpected expression kind"

/--
Convert the given expression into a `HeadIndex`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeadIndex/Variant9ad16f215dc3b239409a4c4e25dcfa507f747a9616ff9ad2788773add432844a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeadIndex/Variant9ad16f215dc3b239409a4c4e25dcfa507f747a9616ff9ad2788773add432844a.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eeda87519bbe7952a6b224062cb68968a3c5afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
