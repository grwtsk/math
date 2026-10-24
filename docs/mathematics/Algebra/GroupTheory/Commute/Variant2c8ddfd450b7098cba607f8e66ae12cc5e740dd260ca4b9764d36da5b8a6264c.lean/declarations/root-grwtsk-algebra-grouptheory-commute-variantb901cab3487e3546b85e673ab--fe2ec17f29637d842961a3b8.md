# _root_.GRWTSK.Algebra.GroupTheory.Commute.Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.pow_succ'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40bdfa1c-48e6-926e-c7a1-1ceff2b97a22",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.Commute.Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.pow_succ'",
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
  "slug": "root-grwtsk-algebra-grouptheory-commute-variantb901cab3487e3546b85e673ab--fe2ec17f29637d842961a3b8",
  "source": {
    "blob": "f4b5c45e808516ee1335b4c49161c09005cf5c9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 221,
    "path": "GRWTSK/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe2ec17f29637d842961a3b8caff2f20e6ab80254ac4603a2ba97e9d51b8a61d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40bdfa1c-48e6-926e-c7a1-1ceff2b97a22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.Commute.Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.pow_succ' (a : M) (n : ℕ) : a ^ (n + 1) = a ^ n * a :=
  (pow_succ a n).trans (self_pow _ _)
#align pow_succ' pow_succ'
#align succ_nsmul' succ_nsmul'

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4b5c45e808516ee1335b4c49161c09005cf5c9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
