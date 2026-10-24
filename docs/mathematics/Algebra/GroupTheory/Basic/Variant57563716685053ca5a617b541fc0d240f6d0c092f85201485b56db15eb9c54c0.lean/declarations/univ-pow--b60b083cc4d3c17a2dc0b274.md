# univ_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d7c5387-67e9-e31b-f58b-ed992619d4e4",
  "kind": "theorem",
  "lexical_name": "univ_pow",
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
  "slug": "univ-pow--b60b083cc4d3c17a2dc0b274",
  "source": {
    "blob": "a17db1d4b6a3aca3f63fea6749908a596525bca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 701,
    "line": 696,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant57563716685053ca5a617b541fc0d240f6d0c092f85201485b56db15eb9c54c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b60b083cc4d3c17a2dc0b274b7f4d90d3095ff6468068e0fb1a4ed815e732dc1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant57563716685053ca5a617b541fc0d240f6d0c092f85201485b56db15eb9c54c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d7c5387-67e9-e31b-f58b-ed992619d4e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 696–701.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem univ_pow : ∀ {n : ℕ}, n ≠ 0 → (univ : Set α) ^ n = univ
  | 0 => fun h => (h rfl).elim
  | 1 => fun _ => pow_one _
  | n + 2 => fun _ => by rw [pow_succ, univ_pow n.succ_ne_zero, univ_mul_univ]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant57563716685053ca5a617b541fc0d240f6d0c092f85201485b56db15eb9c54c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant57563716685053ca5a617b541fc0d240f6d0c092f85201485b56db15eb9c54c0.lean#L696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a17db1d4b6a3aca3f63fea6749908a596525bca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
