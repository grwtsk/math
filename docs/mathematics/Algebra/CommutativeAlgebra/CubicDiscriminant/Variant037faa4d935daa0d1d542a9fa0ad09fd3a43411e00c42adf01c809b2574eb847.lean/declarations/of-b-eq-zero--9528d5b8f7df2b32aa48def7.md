# of_b_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d425373-a41f-7182-ea8c-46c3c873c68c",
  "kind": "theorem",
  "lexical_name": "of_b_eq_zero",
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
  "slug": "of-b-eq-zero--9528d5b8f7df2b32aa48def7",
  "source": {
    "blob": "ca94974c4b8bdd91082f4882047ec867a3130960",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 139,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CubicDiscriminant/Variant037faa4d935daa0d1d542a9fa0ad09fd3a43411e00c42adf01c809b2574eb847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9528d5b8f7df2b32aa48def7f590b3272ab7605801ed215f63b5eb166d7ebb59",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CubicDiscriminant/Variant037faa4d935daa0d1d542a9fa0ad09fd3a43411e00c42adf01c809b2574eb847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d425373-a41f-7182-ea8c-46c3c873c68c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_b_eq_zero (ha : P.a = 0) (hb : P.b = 0) : P.toPoly = C P.c * X + C P.d := by
  rw [of_a_eq_zero ha, hb, C_0, zero_mul, zero_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CubicDiscriminant/Variant037faa4d935daa0d1d542a9fa0ad09fd3a43411e00c42adf01c809b2574eb847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CubicDiscriminant/Variant037faa4d935daa0d1d542a9fa0ad09fd3a43411e00c42adf01c809b2574eb847.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca94974c4b8bdd91082f4882047ec867a3130960` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
