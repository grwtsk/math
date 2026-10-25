# toHeadIndexQuick?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ad3fe83d72390ed4eae781688fe877b3a16e67b64f35c8d438d1c74e2d39c17",
  "kind": "def",
  "lexical_name": "toHeadIndexQuick?",
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
  "slug": "toheadindexquick--20a42edf707e8ec18524e145",
  "source": {
    "blob": "8eeda87519bbe7952a6b224062cb68968a3c5afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeadIndex/Variant9ad16f215dc3b239409a4c4e25dcfa507f747a9616ff9ad2788773add432844a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20a42edf707e8ec18524e145010a3015f5eec62193d0a7312a29eab908ac955a",
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

Occurrence: `declaration:7ad3fe83d72390ed4eae781688fe877b3a16e67b64f35c8d438d1c74e2d39c17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def toHeadIndexQuick? : Expr → Option HeadIndex
  | mvar mvarId             => HeadIndex.mvar mvarId
  | fvar fvarId             => HeadIndex.fvar fvarId
  | const constName _       => HeadIndex.const constName
  | proj structName idx _   => HeadIndex.proj structName idx
  | sort _                  => HeadIndex.sort
  | lam ..                  => HeadIndex.lam
  | forallE ..              => HeadIndex.forallE
  | lit v                   => HeadIndex.lit v
  | app f _                 => toHeadIndexQuick? f
  | letE _ _ _ b _          => toHeadIndexQuick? b
  | mdata _ e               => toHeadIndexQuick? e
  | _                       => none

/--
  Slower version of `toHeadIndexQuick?` that "expands" let-declarations to make
  sure we never hit a loose bound variable.
  The performance of the `letE` alternative can be improved, but this function should not be in the hotpath
  since `toHeadIndexQuick?` succeeds most of the time.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeadIndex/Variant9ad16f215dc3b239409a4c4e25dcfa507f747a9616ff9ad2788773add432844a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeadIndex/Variant9ad16f215dc3b239409a4c4e25dcfa507f747a9616ff9ad2788773add432844a.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eeda87519bbe7952a6b224062cb68968a3c5afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
