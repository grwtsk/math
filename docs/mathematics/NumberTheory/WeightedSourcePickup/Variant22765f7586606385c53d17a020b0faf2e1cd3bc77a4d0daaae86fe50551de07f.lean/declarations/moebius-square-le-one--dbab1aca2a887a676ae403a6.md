# moebius_square_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b609d76-e08e-5497-9650-6adf42b9cce4",
  "kind": "theorem",
  "lexical_name": "moebius_square_le_one",
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
  "slug": "moebius-square-le-one--dbab1aca2a887a676ae403a6",
  "source": {
    "blob": "1ab73c625f9e1dea26e4dec58cb10cc0614d0758",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 147,
    "path": "GRWTSK/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbab1aca2a887a676ae403a6b732c55e2f1cb004f05587363e2a81d2cab8965c",
  "verification": {
    "reference": "docs/verification/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b609d76-e08e-5497-9650-6adf42b9cce4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moebius_square_le_one (n : ℕ) : realMoebius n ^ 2 ≤ 1 := by
  have h : |realMoebius n| ≤ 1 := by
    unfold realMoebius
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))
  nlinarith [sq_abs (realMoebius n), abs_nonneg (realMoebius n)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ab73c625f9e1dea26e4dec58cb10cc0614d0758` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
