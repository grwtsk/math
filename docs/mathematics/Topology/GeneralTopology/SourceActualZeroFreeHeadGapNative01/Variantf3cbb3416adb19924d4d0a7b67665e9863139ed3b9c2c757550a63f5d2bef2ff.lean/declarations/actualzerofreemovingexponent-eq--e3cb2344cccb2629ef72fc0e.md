# actualZeroFreeMovingExponent_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d89ae729-8d6d-8961-8b21-34d505064852",
  "kind": "theorem",
  "lexical_name": "actualZeroFreeMovingExponent_eq",
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
  "slug": "actualzerofreemovingexponent-eq--e3cb2344cccb2629ef72fc0e",
  "source": {
    "blob": "cda9d459fd87c4063959537e5c3e75aa1ae89900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative01/Variantf3cbb3416adb19924d4d0a7b67665e9863139ed3b9c2c757550a63f5d2bef2ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3cb2344cccb2629ef72fc0e9d0606216ef9ea80496fe6ca847ec3cc3e965687",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative01/Variantf3cbb3416adb19924d4d0a7b67665e9863139ed3b9c2c757550a63f5d2bef2ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d89ae729-8d6d-8961-8b21-34d505064852`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroFreeMovingExponent_eq (a c A : ℝ) (hc : 1 < c) (hA : 0 < A) :
    A - 2 * a * A / (Real.log (actualBumpMovingHeight A c))^9 =
      A - (2 * a * 5^9 / (2 * c - 1)^9) / A^8 := by
  unfold actualBumpMovingHeight
  rw [Real.log_exp]
  have hc0 : 2 * c - 1 ≠ 0 := by linarith
  have hA0 := ne_of_gt hA
  field_simp
  ring

/-- The moving-height exponent correction actually tends to zero, not to infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative01/Variantf3cbb3416adb19924d4d0a7b67665e9863139ed3b9c2c757550a63f5d2bef2ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative01/Variantf3cbb3416adb19924d4d0a7b67665e9863139ed3b9c2c757550a63f5d2bef2ff.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cda9d459fd87c4063959537e5c3e75aa1ae89900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
