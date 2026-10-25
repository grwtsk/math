# smulWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b1b83dc434e666df98ff9b7eb4341ab251ed55b70662a6ce4325c8780021e91",
  "kind": "abbrev",
  "lexical_name": "smulWithZero",
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
  "slug": "smulwithzero--893641fa6eae51cdf99d3287",
  "source": {
    "blob": "abe1de5a6f511b0771e1a5d4ae0b03130bf5c51c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TransferInstance/Variant97994dfbe8a1f31b6c8aa4702a19cd1ffbc12b99baf3b7ef5d2b77167e1482ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:893641fa6eae51cdf99d3287459795b37b5a524e8c5d167dfe7d283111b13d43",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TransferInstance/Variant97994dfbe8a1f31b6c8aa4702a19cd1ffbc12b99baf3b7ef5d2b77167e1482ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b1b83dc434e666df98ff9b7eb4341ab251ed55b70662a6ce4325c8780021e91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev smulWithZero (e : A ≃ B) [Zero M₀] [Zero A] [Zero B] [SMulWithZero M₀ B]
    (map_zero : e 0 = 0) : SMulWithZero M₀ A where
  __ := e.smulZeroClass M₀ map_zero
  zero_smul := by simp [smul_def, symm_apply_eq, map_zero]

variable (M₀) in
/-- Transfer `MulActionWithZero` across an `Equiv` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TransferInstance/Variant97994dfbe8a1f31b6c8aa4702a19cd1ffbc12b99baf3b7ef5d2b77167e1482ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TransferInstance/Variant97994dfbe8a1f31b6c8aa4702a19cd1ffbc12b99baf3b7ef5d2b77167e1482ab.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abe1de5a6f511b0771e1a5d4ae0b03130bf5c51c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
