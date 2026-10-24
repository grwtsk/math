# LinearMap.extendTo𝕜

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e37c2bfc180417b52f5a266b437a80e61e830377b5477360853fb7da64f7d19a",
  "kind": "def",
  "lexical_name": "LinearMap.extendTo𝕜",
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
  "slug": "linearmap-extendto--5e219d6eecb1416d343b1afa",
  "source": {
    "blob": "cb3a4bd6588f9eafd88b33fc0691cc1e8bbc505c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 140,
    "path": "GRWTSK/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e219d6eecb1416d343b1afad136f95f2ec16f8fd8ec8a4fd90321b4c4703a1f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e37c2bfc180417b52f5a266b437a80e61e830377b5477360853fb7da64f7d19a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def LinearMap.extendTo𝕜 (fr : RestrictScalars ℝ 𝕜 F →ₗ[ℝ] ℝ) : F →ₗ[𝕜] 𝕜 :=
  fr.extendTo𝕜'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb3a4bd6588f9eafd88b33fc0691cc1e8bbc505c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
