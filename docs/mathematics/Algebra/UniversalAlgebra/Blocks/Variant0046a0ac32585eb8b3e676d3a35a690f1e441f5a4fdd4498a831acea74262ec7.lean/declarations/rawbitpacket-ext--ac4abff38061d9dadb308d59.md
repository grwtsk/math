# RawBitPacket.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef1a9a00-138b-1d89-1015-d98126fb48fa",
  "kind": "theorem",
  "lexical_name": "RawBitPacket.ext",
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
  "slug": "rawbitpacket-ext--ac4abff38061d9dadb308d59",
  "source": {
    "blob": "e1df3567a89d242a0ad61bf3bce5bec43a2fd9d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 99,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac4abff38061d9dadb308d59a78caf98328e181230480f7d0056ee2b6153ce36",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef1a9a00-138b-1d89-1015-d98126fb48fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RawBitPacket.ext {x y : RawBitPacket r}
    (hrows : x.rows = y.rows)
    (hmatrix : HEq x.matrix y.matrix)
    (hpayload : x.payloadBits = y.payloadBits) : x = y := by
  cases x with
  | mk xr xm xp =>
      cases y with
      | mk yr ym yp =>
          cases hrows
          cases hmatrix
          cases hpayload
          rfl

/--
Canonical packet validity records sufficient capacity, the minimal row count,
and zero padding after the exact payload boundary.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1df3567a89d242a0ad61bf3bce5bec43a2fd9d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
