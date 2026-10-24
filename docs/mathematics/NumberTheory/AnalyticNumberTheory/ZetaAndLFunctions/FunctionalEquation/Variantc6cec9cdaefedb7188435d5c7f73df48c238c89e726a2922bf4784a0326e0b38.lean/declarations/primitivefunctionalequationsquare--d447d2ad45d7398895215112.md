# PrimitiveFunctionalEquationSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26e1b374b4d587d777630f35e0a39253d8362ea55cdd6dfdf45c644d2c97d3ca",
  "kind": "structure",
  "lexical_name": "PrimitiveFunctionalEquationSquare",
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
  "slug": "primitivefunctionalequationsquare--d447d2ad45d7398895215112",
  "source": {
    "blob": "feef12b128697985fc70940b867fa510d02562ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 130,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantc6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d447d2ad45d7398895215112e245bec0194342f3e62bc453375f1c9812a7bb7d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantc6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26e1b374b4d587d777630f35e0a39253d8362ea55cdd6dfdf45c644d2c97d3ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrimitiveFunctionalEquationSquare
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) where
  completedL : ℂ → ℂ
  functionalFactor : ℂ → ℂ
  functionalFactor_ne_zero : ∀ s, functionalFactor s ≠ 0

  completedL_zero_iff_LFunction_zero :
    ∀ s : ℂ, 0 < s.re → s.re < 1 →
      (completedL s = 0 ↔ DirichletCharacter.LFunction χ s = 0)

  functionalEquation :
    ∀ s : ℂ,
      completedL s =
        functionalFactor s * star (completedL (criticalReflection s))

/-- The functional equation reflects every left-half critical-strip zero to
a right-half zero of the same character. -/
@[surface_novel, surface_interface]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantc6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantc6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feef12b128697985fc70940b867fa510d02562ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
