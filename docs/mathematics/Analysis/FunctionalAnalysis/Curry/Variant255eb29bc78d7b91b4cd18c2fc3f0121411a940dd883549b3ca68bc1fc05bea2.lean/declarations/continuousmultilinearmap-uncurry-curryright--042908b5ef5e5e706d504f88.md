# ContinuousMultilinearMap.uncurry_curryRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acd40bfe-f93e-7478-d203-8c1405bdb473",
  "kind": "theorem",
  "lexical_name": "ContinuousMultilinearMap.uncurry_curryRight",
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
  "slug": "continuousmultilinearmap-uncurry-curryright--042908b5ef5e5e706d504f88",
  "source": {
    "blob": "faaf32542a0d4c2e5cd4176011b19d72f8909120",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 250,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant255eb29bc78d7b91b4cd18c2fc3f0121411a940dd883549b3ca68bc1fc05bea2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:042908b5ef5e5e706d504f8882839a4ce65f65fbfe971cef3e9a0033cdc9f34a",
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

Occurrence: `result:acd40bfe-f93e-7478-d203-8c1405bdb473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousMultilinearMap.uncurry_curryRight (f : ContinuousMultilinearMap 𝕜 Ei G) :
    f.curryRight.uncurryRight = f := by
  ext m
  rw [uncurryRight_apply, curryRight_apply, snoc_init_self]

variable (𝕜 Ei G)

set_option backward.isDefEq.respectTransparency false in
/--
The space of continuous multilinear maps on `Π(i : Fin (n+1)), Ei i` is canonically isomorphic to
the space of continuous multilinear maps on `Π(i : Fin n), Ei <| castSucc i` with values in the
space of continuous linear maps on `Ei (last n)`, by separating the last variable. We register this
isomorphism as a continuous linear equiv in `continuousMultilinearCurryRightEquiv 𝕜 Ei G`.
The algebraic version (without topology) is given in `multilinearCurryRightEquiv 𝕜 Ei G`.

The direct and inverse maps are given by `f.curryRight` and `f.uncurryRight`. Use these
unless you need the full framework of linear isometric equivs.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Curry/Variant255eb29bc78d7b91b4cd18c2fc3f0121411a940dd883549b3ca68bc1fc05bea2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant255eb29bc78d7b91b4cd18c2fc3f0121411a940dd883549b3ca68bc1fc05bea2.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faaf32542a0d4c2e5cd4176011b19d72f8909120` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
