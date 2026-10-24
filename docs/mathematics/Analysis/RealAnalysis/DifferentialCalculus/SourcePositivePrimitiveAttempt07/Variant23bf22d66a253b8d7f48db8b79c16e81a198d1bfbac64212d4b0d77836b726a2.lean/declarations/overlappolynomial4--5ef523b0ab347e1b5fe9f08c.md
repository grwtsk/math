# overlapPolynomial4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d9e93b5c91600c7a89358e1bc85c3fd98d8e388f5ba32ccc272b0b5d7df3d0f",
  "kind": "def",
  "lexical_name": "overlapPolynomial4",
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
  "slug": "overlappolynomial4--5ef523b0ab347e1b5fe9f08c",
  "source": {
    "blob": "7784c53578185e6ea1c325d0ce4c17a66036a2d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt07/Variant23bf22d66a253b8d7f48db8b79c16e81a198d1bfbac64212d4b0d77836b726a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ef523b0ab347e1b5fe9f08c6c65b9c840bc1c27eecf1f58eeae0ebad7406246",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt07/Variant23bf22d66a253b8d7f48db8b79c16e81a198d1bfbac64212d4b0d77836b726a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d9e93b5c91600c7a89358e1bc85c3fd98d8e388f5ba32ccc272b0b5d7df3d0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def overlapPolynomial4 (u : ℝ) : ℝ := (196608/5005:ℝ) + (-32768/77:ℝ)*u^2 + (4096/3:ℝ)*u^4 + (-6144/5:ℝ)*u^5 + (2048/7:ℝ)*u^7 + (-384/7:ℝ)*u^9 + (64/11:ℝ)*u^11 + (-112/429:ℝ)*u^13

/-- Exact polynomial integration of the literal actual overlap, not a fitted polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt07/Variant23bf22d66a253b8d7f48db8b79c16e81a198d1bfbac64212d4b0d77836b726a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt07/Variant23bf22d66a253b8d7f48db8b79c16e81a198d1bfbac64212d4b0d77836b726a2.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7784c53578185e6ea1c325d0ce4c17a66036a2d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
