# predCompareBody_rename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b7b9862-b8c9-f3c1-c423-b94c0fe61752",
  "kind": "theorem",
  "lexical_name": "predCompareBody_rename",
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
  "slug": "predcomparebody-rename--e818708724a2879aa6c32eaf",
  "source": {
    "blob": "87031993f06bb06b4c00e9ac6a45851f225a208d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 904,
    "line": 900,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant9cc7ddd5bd7605e872e62b370c6c633904d28a6f3c56027f0ef6747c67e7481a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e818708724a2879aa6c32eaf319a25c9079e58567d67d0f7f39a87567df4daa0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant9cc7ddd5bd7605e872e62b370c6c633904d28a6f3c56027f0ef6747c67e7481a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b7b9862-b8c9-f3c1-c423-b94c0fe61752`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 900–904.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem predCompareBody_rename (L : LogicCode S) (T p q : Expr S) (ρ : Nat → Nat) :
    (R.predCompareBody L T p q).rename (Expr.liftRen ρ) =
      (R.rename ρ).predCompareBody (L.rename ρ) (T.rename ρ) (p.rename ρ) (q.rename ρ) := by
  simp only [predCompareBody,LogicCode.iff_rename,LogicCode.rename_comp,evalBody_rename]
  rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant9cc7ddd5bd7605e872e62b370c6c633904d28a6f3c56027f0ef6747c67e7481a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant9cc7ddd5bd7605e872e62b370c6c633904d28a6f3c56027f0ef6747c67e7481a.lean#L900).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87031993f06bb06b4c00e9ac6a45851f225a208d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
