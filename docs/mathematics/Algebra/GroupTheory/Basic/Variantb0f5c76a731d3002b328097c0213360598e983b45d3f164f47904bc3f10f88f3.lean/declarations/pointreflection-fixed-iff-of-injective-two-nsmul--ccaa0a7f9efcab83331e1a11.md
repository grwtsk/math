# pointReflection_fixed_iff_of_injective_two_nsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:466dc3ae-d270-bdbe-2610-da0ddb1bed2d",
  "kind": "theorem",
  "lexical_name": "pointReflection_fixed_iff_of_injective_two_nsmul",
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
  "slug": "pointreflection-fixed-iff-of-injective-two-nsmul--ccaa0a7f9efcab83331e1a11",
  "source": {
    "blob": "4e2b485401e45ee8a40b06d439109bf26973418b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 199,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantb0f5c76a731d3002b328097c0213360598e983b45d3f164f47904bc3f10f88f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccaa0a7f9efcab83331e1a1131b580d37835b53b4af996c0d6667b118ec2c0c3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantb0f5c76a731d3002b328097c0213360598e983b45d3f164f47904bc3f10f88f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:466dc3ae-d270-bdbe-2610-da0ddb1bed2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pointReflection_fixed_iff_of_injective_two_nsmul {x y : P} (h : Injective (2 • · : G → G)) :
    pointReflection x y = y ↔ y = x := by
  rw [pointReflection_apply, eq_comm, eq_vadd_iff_vsub_eq, ← neg_vsub_eq_vsub_rev,
    neg_eq_iff_add_eq_zero, ← two_nsmul, ← nsmul_zero 2, h.eq_iff, vsub_eq_zero_iff_eq, eq_comm]

@[deprecated (since := "2024-11-18")] alias pointReflection_fixed_iff_of_injective_bit0 :=
pointReflection_fixed_iff_of_injective_two_nsmul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantb0f5c76a731d3002b328097c0213360598e983b45d3f164f47904bc3f10f88f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantb0f5c76a731d3002b328097c0213360598e983b45d3f164f47904bc3f10f88f3.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e2b485401e45ee8a40b06d439109bf26973418b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
