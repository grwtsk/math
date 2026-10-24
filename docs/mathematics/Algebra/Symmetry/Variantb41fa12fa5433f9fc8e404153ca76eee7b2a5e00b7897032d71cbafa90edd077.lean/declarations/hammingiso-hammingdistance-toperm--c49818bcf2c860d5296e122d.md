# HammingIso.hammingDistance_toPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3b79f2e-42f5-8aea-8948-283c53758521",
  "kind": "theorem",
  "lexical_name": "HammingIso.hammingDistance_toPerm",
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
  "slug": "hammingiso-hammingdistance-toperm--c49818bcf2c860d5296e122d",
  "source": {
    "blob": "f2009fd9780bcdddc8e081e1794f17173b45d587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 295,
    "path": "GRWTSK/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c49818bcf2c860d5296e122df1bf73748c04282bd0e6c3d9321ccb6be9adb03a",
  "verification": {
    "reference": "docs/verification/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3b79f2e-42f5-8aea-8948-283c53758521`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HammingIso.hammingDistance_toPerm {n : Nat}
    (g : HammingIso n)
    (x y : Bits n) :
    hammingDistance (g.toPerm x) (g.toPerm y) =
      hammingDistance x y := by
  rw [hammingDistance, g.toPerm_apply, g.toPerm_apply,
    xorBits_cancel_both_right, ← coordinatePermutation_xor,
    hammingWeight_coordinatePermutation]
  rfl

/-- Offset and coordinate parameters determine an explicit Hamming isometry uniquely. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2009fd9780bcdddc8e081e1794f17173b45d587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
