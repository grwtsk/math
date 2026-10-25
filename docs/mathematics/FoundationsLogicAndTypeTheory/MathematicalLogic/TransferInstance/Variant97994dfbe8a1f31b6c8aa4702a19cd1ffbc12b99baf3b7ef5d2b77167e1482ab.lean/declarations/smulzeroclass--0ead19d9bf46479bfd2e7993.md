# smulZeroClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f414845075246e2e0021436b1e65fa9d5eb2d16df02a7b8ce7d4fcc1819b5d43",
  "kind": "abbrev",
  "lexical_name": "smulZeroClass",
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
  "slug": "smulzeroclass--0ead19d9bf46479bfd2e7993",
  "source": {
    "blob": "abe1de5a6f511b0771e1a5d4ae0b03130bf5c51c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TransferInstance/Variant97994dfbe8a1f31b6c8aa4702a19cd1ffbc12b99baf3b7ef5d2b77167e1482ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ead19d9bf46479bfd2e7993b20d866dfb69b2cae049e1ebcc128f3b5f19ddaf",
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

Occurrence: `declaration:f414845075246e2e0021436b1e65fa9d5eb2d16df02a7b8ce7d4fcc1819b5d43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev smulZeroClass (e : A ≃ B) [Zero A] [Zero B] [SMulZeroClass M B]
    (map_zero : e 0 = 0) : SMulZeroClass M A where
  __ := e.smul M
  smul_zero := by simp [smul_def, symm_apply_eq, map_zero]

variable (M₀) in
/-- Transfer `SMulWithZero` across an `Equiv` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TransferInstance/Variant97994dfbe8a1f31b6c8aa4702a19cd1ffbc12b99baf3b7ef5d2b77167e1482ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TransferInstance/Variant97994dfbe8a1f31b6c8aa4702a19cd1ffbc12b99baf3b7ef5d2b77167e1482ab.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abe1de5a6f511b0771e1a5d4ae0b03130bf5c51c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
