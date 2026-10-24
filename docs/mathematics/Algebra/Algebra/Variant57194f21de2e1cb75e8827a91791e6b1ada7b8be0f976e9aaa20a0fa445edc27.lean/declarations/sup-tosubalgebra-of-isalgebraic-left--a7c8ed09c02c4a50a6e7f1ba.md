# sup_toSubalgebra_of_isAlgebraic_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac597647-53d4-e3b0-ff12-52bbd3bc58f3",
  "kind": "theorem",
  "lexical_name": "sup_toSubalgebra_of_isAlgebraic_left",
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
  "slug": "sup-tosubalgebra-of-isalgebraic-left--a7c8ed09c02c4a50a6e7f1ba",
  "source": {
    "blob": "b8208c1f4c906953a65d0c8fb471b5200d6a70fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 133,
    "path": "GRWTSK/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7c8ed09c02c4a50a6e7f1bac73b8e22ce3fd0a08f84a8d662ae54d1b49b60d0",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac597647-53d4-e3b0-ff12-52bbd3bc58f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_toSubalgebra_of_isAlgebraic_left [Algebra.IsAlgebraic K E1] :
    (E1 ⊔ E2).toSubalgebra = E1.toSubalgebra ⊔ E2.toSubalgebra := by
  have := sup_toSubalgebra_of_isAlgebraic_right E2 E1
  rwa [sup_comm (a := E1), sup_comm (a := E1.toSubalgebra)]

/-- The compositum of two intermediate fields is equal to the compositum of them
as subalgebras, if one of them is algebraic over the base field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8208c1f4c906953a65d0c8fb471b5200d6a70fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
