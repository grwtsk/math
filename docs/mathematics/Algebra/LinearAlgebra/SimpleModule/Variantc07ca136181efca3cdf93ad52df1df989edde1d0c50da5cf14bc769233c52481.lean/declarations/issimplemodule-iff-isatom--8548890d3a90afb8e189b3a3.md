# isSimpleModule_iff_isAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73d5837f-1f48-bbde-4c52-380f5efa2b30",
  "kind": "theorem",
  "lexical_name": "isSimpleModule_iff_isAtom",
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
  "slug": "issimplemodule-iff-isatom--8548890d3a90afb8e189b3a3",
  "source": {
    "blob": "7242561df1752d6a9ccececfe48b9f9b7a31d424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8548890d3a90afb8e189b3a3f64ae8b3fd48d4729988afb3338c977457de9c86",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73d5837f-1f48-bbde-4c52-380f5efa2b30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSimpleModule_iff_isAtom : IsSimpleModule R m ↔ IsAtom m := by
  rw [← Set.isSimpleOrder_Iic_iff_isAtom]
  apply OrderIso.isSimpleOrder_iff
  exact Submodule.MapSubtype.relIso m
#align is_simple_module_iff_is_atom isSimpleModule_iff_isAtom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7242561df1752d6a9ccececfe48b9f9b7a31d424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
