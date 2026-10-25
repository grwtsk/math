# NormalizationPlan.allocate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a162ecb3207d7ba5f428e601b6a274482d88f19e9cb7ad6c2a5df4e2f2185639",
  "kind": "def",
  "lexical_name": "NormalizationPlan.allocate",
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
  "slug": "normalizationplan-allocate--89faf8b1b3e27bee8409df42",
  "source": {
    "blob": "3bd7172aba9f25de8885380d4dc514cc208fdda9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 442,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variant4c6e93b7553d11ad70cb54e1cbb6128f424e6410de1b690a19a65fa4090e9921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89faf8b1b3e27bee8409df4245e8280f32e92c16c1a1419cbeb206b715213ee0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Fixed/Variant4c6e93b7553d11ad70cb54e1cbb6128f424e6410de1b690a19a65fa4090e9921.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a162ecb3207d7ba5f428e601b6a274482d88f19e9cb7ad6c2a5df4e2f2185639`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def NormalizationPlan.allocate (plan : NormalizationPlan) : RawXYZ :=
  let floors : RawXYZ := ⟨plan.floorX, plan.floorY, plan.floorZ⟩
  if plan.residual = 0 then floors
  else if plan.residual = 1 then floors.incrementAxis plan.ranked.1.axis
  else
    (floors.incrementAxis plan.ranked.1.axis).incrementAxis plan.ranked.2.1.axis

/-- Checked construction of a bounded normalized value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Fixed/Variant4c6e93b7553d11ad70cb54e1cbb6128f424e6410de1b690a19a65fa4090e9921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variant4c6e93b7553d11ad70cb54e1cbb6128f424e6410de1b690a19a65fa4090e9921.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bd7172aba9f25de8885380d4dc514cc208fdda9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
