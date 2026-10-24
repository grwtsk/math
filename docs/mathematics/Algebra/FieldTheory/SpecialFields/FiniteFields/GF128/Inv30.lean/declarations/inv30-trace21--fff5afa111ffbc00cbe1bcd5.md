# inv30_trace21

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b20d078-2414-c4f3-97d8-c70cf3b52200",
  "kind": "theorem",
  "lexical_name": "inv30_trace21",
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
  "slug": "inv30-trace21--fff5afa111ffbc00cbe1bcd5",
  "source": {
    "blob": "3ca564d5fcbd10801e6032786c8872c4a4a8ebeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 474,
    "path": "GRWTSK/Algebra/FiniteField/GF128/Inv30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fff5afa111ffbc00cbe1bcd5fc9c2cb4d4b40e3d3559e54259b0d4b87f6ed077",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b20d078-2414-c4f3-97d8-c70cf3b52200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv30_trace21 : powFuel 107 162259276829213363391578010288127 297739150234428807017027193513474913344 14470343482686810242862080871894346342 = 34028236692093846346337460743176821141 :=
  (pow_odd_step 106 162259276829213363391578010288127 297739150234428807017027193513474913344 14470343482686810242862080871894346342 32339266980712363852280117529612330399 228573769876389432417388826118747894280 (by decide) (by decide) inv30_square21 inv30_product21).trans inv30_trace22
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteField/GF128/Inv30.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ca564d5fcbd10801e6032786c8872c4a4a8ebeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
