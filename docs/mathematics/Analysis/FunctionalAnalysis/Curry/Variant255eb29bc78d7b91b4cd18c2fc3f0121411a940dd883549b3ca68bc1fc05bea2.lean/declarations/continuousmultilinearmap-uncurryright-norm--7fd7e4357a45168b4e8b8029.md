# ContinuousMultilinearMap.uncurryRight_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00cf236f-3fbd-d2cf-f523-2904e56f9357",
  "kind": "theorem",
  "lexical_name": "ContinuousMultilinearMap.uncurryRight_norm",
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
  "slug": "continuousmultilinearmap-uncurryright-norm--7fd7e4357a45168b4e8b8029",
  "source": {
    "blob": "faaf32542a0d4c2e5cd4176011b19d72f8909120",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 332,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant255eb29bc78d7b91b4cd18c2fc3f0121411a940dd883549b3ca68bc1fc05bea2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fd7e4357a45168b4e8b80294f08a3b9d1975ee4bdd173e1cd9e794dd0831499",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Curry/Variant255eb29bc78d7b91b4cd18c2fc3f0121411a940dd883549b3ca68bc1fc05bea2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00cf236f-3fbd-d2cf-f523-2904e56f9357`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousMultilinearMap.uncurryRight_norm
    (f : ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei <| castSucc i) (Ei (last n) →L[𝕜] G)) :
    ‖f.uncurryRight‖ = ‖f‖ :=
  (continuousMultilinearCurryRightEquiv 𝕜 Ei G).symm.norm_map f

/-!
### Currying a variable in the middle
-/

/-- Given a continuous linear map from `M p` to the space of continuous multilinear maps
in `n` variables `M 0`, ..., `M n` with `M p` removed,
returns a continuous multilinear map in all `n + 1` variables. -/
@[simps! apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Curry/Variant255eb29bc78d7b91b4cd18c2fc3f0121411a940dd883549b3ca68bc1fc05bea2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant255eb29bc78d7b91b4cd18c2fc3f0121411a940dd883549b3ca68bc1fc05bea2.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faaf32542a0d4c2e5cd4176011b19d72f8909120` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
