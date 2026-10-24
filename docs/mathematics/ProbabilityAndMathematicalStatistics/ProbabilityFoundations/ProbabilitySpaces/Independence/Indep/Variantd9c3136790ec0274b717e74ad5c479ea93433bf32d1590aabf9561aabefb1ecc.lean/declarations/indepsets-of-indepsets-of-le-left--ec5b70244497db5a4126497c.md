# indepSets_of_indepSets_of_le_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab69a6d7-95eb-6f81-7a2d-623d7953cf34",
  "kind": "theorem",
  "lexical_name": "indepSets_of_indepSets_of_le_left",
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
  "slug": "indepsets-of-indepsets-of-le-left--ec5b70244497db5a4126497c",
  "source": {
    "blob": "60e1c1d99577d0d05b70058457fdf179d3f01227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 315,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Indep/Variantd9c3136790ec0274b717e74ad5c479ea93433bf32d1590aabf9561aabefb1ecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec5b70244497db5a4126497c80024013a5ac8df06be5ab3acc027f39e8bea361",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Indep/Variantd9c3136790ec0274b717e74ad5c479ea93433bf32d1590aabf9561aabefb1ecc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab69a6d7-95eb-6f81-7a2d-623d7953cf34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indepSets_of_indepSets_of_le_left {s₁ s₂ s₃ : Set (Set Ω)} {_mΩ : MeasurableSpace Ω}
    {κ : Kernel α Ω} {μ : Measure α} (h_indep : IndepSets s₁ s₂ κ μ) (h31 : s₃ ⊆ s₁) :
    IndepSets s₃ s₂ κ μ :=
  fun t1 t2 ht1 ht2 => h_indep t1 t2 (Set.mem_of_subset_of_mem h31 ht1) ht2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Indep/Variantd9c3136790ec0274b717e74ad5c479ea93433bf32d1590aabf9561aabefb1ecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Indep/Variantd9c3136790ec0274b717e74ad5c479ea93433bf32d1590aabf9561aabefb1ecc.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60e1c1d99577d0d05b70058457fdf179d3f01227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
