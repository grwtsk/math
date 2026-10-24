# convexBodySumFactor_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b69652d5-c2a8-5f4a-9d38-8e3e3cb8f2a7",
  "kind": "theorem",
  "lexical_name": "convexBodySumFactor_ne_zero",
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
  "slug": "convexbodysumfactor-ne-zero--4e6da23e43da9a211a998bf1",
  "source": {
    "blob": "bcde65f4321c7c9d0b30b0a7f1e30d92000fe051",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 378,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e6da23e43da9a211a998bf157704ac415929061cadb2debd3460d806c8d159e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b69652d5-c2a8-5f4a-9d38-8e3e3cb8f2a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexBodySumFactor_ne_zero : convexBodySumFactor K ≠ 0 := by
  refine div_ne_zero ?_ <| Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero _)
  exact mul_ne_zero (pow_ne_zero _ two_ne_zero)
    (pow_ne_zero _ (div_ne_zero NNReal.pi_ne_zero two_ne_zero))

open MeasureTheory MeasureTheory.Measure Real in
open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcde65f4321c7c9d0b30b0a7f1e30d92000fe051` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
