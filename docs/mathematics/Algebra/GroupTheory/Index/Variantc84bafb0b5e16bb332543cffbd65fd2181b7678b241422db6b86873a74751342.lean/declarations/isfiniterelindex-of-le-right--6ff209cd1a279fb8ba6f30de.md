# isFiniteRelIndex_of_le_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c3b7920-7fa4-faa8-bcd3-aadd47447e52",
  "kind": "lemma",
  "lexical_name": "isFiniteRelIndex_of_le_right",
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
  "slug": "isfiniterelindex-of-le-right--6ff209cd1a279fb8ba6f30de",
  "source": {
    "blob": "ddcb9b542e107b94004982f6c42d84629baae43c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 833,
    "line": 828,
    "path": "GRWTSK/Algebra/GroupTheory/Index/Variantc84bafb0b5e16bb332543cffbd65fd2181b7678b241422db6b86873a74751342.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ff209cd1a279fb8ba6f30def06f36fe9491d36340fabd87921f6f7645aa1430",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Index/Variantc84bafb0b5e16bb332543cffbd65fd2181b7678b241422db6b86873a74751342.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c3b7920-7fa4-faa8-bcd3-aadd47447e52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 828–833.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isFiniteRelIndex_of_le_right (h : K ≤ L) [H.IsFiniteRelIndex L] :
    H.IsFiniteRelIndex K := by
  rw [isFiniteRelIndex_iff_relIndex_ne_zero]
  exact mt (relIndex_eq_zero_of_le_right h) relIndex_ne_zero

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Index/Variantc84bafb0b5e16bb332543cffbd65fd2181b7678b241422db6b86873a74751342.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Index/Variantc84bafb0b5e16bb332543cffbd65fd2181b7678b241422db6b86873a74751342.lean#L828).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcb9b542e107b94004982f6c42d84629baae43c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
