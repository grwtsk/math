# realization_rename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8c56497-0760-7293-82ce-2e9c12c14ffd",
  "kind": "theorem",
  "lexical_name": "realization_rename",
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
  "slug": "realization-rename--1af1629eaf4b66f7245e88de",
  "source": {
    "blob": "b5f21e36507710d4ab09326615af7cc30053d552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2254,
    "line": 2247,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1af1629eaf4b66f7245e88defcfc8d207006d485016c13bf6cfebc44695af710",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8c56497-0760-7293-82ce-2e9c12c14ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2247–2254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realization_rename (U : DataWrapper S true) (L : LogicCode S) (T c : Expr S) (Q : Fin
  7 → Expr S) (ρ : Nat → Nat) :
    (R.realization U L T c Q).rename ρ =
      (R.rename ρ).realization (U.rename ρ) (L.rename ρ) (T.rename ρ) (c.rename ρ) (fun t =>
        (Q t).rename (Expr.liftRen ρ)) := by
  simp only [realization,DataWrapper.build_rename,bpType_rename,realizationBody_rename,
    rename_second,
    DataWrapper.argRen,ite_true]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean#L2247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5f21e36507710d4ab09326615af7cc30053d552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
