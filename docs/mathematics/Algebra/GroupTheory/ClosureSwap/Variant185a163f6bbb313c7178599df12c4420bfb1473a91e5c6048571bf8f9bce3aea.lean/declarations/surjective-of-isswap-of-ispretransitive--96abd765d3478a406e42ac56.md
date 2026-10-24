# surjective_of_isSwap_of_isPretransitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e43618c2-fb03-6419-6caa-8c50ce6c01d2",
  "kind": "theorem",
  "lexical_name": "surjective_of_isSwap_of_isPretransitive",
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
  "slug": "surjective-of-isswap-of-ispretransitive--96abd765d3478a406e42ac56",
  "source": {
    "blob": "cd096342bfdcf3f3d728ad28bed81fc1a4128266",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 164,
    "path": "GRWTSK/Algebra/GroupTheory/ClosureSwap/Variant185a163f6bbb313c7178599df12c4420bfb1473a91e5c6048571bf8f9bce3aea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96abd765d3478a406e42ac565cda34b7a3a455c2efe207a57f71b1cea91f01c0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ClosureSwap/Variant185a163f6bbb313c7178599df12c4420bfb1473a91e5c6048571bf8f9bce3aea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e43618c2-fb03-6419-6caa-8c50ce6c01d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjective_of_isSwap_of_isPretransitive [Finite α] (S : Set G)
    (hS1 : ∀ σ ∈ S, Perm.IsSwap (MulAction.toPermHom G α σ)) (hS2 : Subgroup.closure S = ⊤)
    [h : MulAction.IsPretransitive G α] : Function.Surjective (MulAction.toPermHom G α) :=
  surjective_of_isSwap_of_isPretransitive' S (fun σ hσ ↦ Or.inr (hS1 σ hσ)) hS2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ClosureSwap/Variant185a163f6bbb313c7178599df12c4420bfb1473a91e5c6048571bf8f9bce3aea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ClosureSwap/Variant185a163f6bbb313c7178599df12c4420bfb1473a91e5c6048571bf8f9bce3aea.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd096342bfdcf3f3d728ad28bed81fc1a4128266` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
