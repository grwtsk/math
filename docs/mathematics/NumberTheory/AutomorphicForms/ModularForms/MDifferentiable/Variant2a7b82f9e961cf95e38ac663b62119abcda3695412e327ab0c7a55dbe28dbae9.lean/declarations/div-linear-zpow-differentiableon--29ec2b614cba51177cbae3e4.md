# div_linear_zpow_differentiableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60fa96ff-d835-a74d-14db-c7b1bfa2ae0d",
  "kind": "lemma",
  "lexical_name": "div_linear_zpow_differentiableOn",
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
  "slug": "div-linear-zpow-differentiableon--29ec2b614cba51177cbae3e4",
  "source": {
    "blob": "27b12b5eac5059370f0b312d21a1db74ae329716",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant2a7b82f9e961cf95e38ac663b62119abcda3695412e327ab0c7a55dbe28dbae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29ec2b614cba51177cbae3e4c76bd0afa2415caf89dbf8c12295b741fc57a503",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant2a7b82f9e961cf95e38ac663b62119abcda3695412e327ab0c7a55dbe28dbae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60fa96ff-d835-a74d-14db-c7b1bfa2ae0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma div_linear_zpow_differentiableOn (k : ℤ) (a : Fin 2 → ℤ) :
    DifferentiableOn ℂ (fun z : ℂ => (a 0 * z + a 1) ^ (-k)) {z : ℂ | 0 < z.im} := by
  rcases ne_or_eq a 0 with ha | rfl
  · apply DifferentiableOn.zpow
    · fun_prop
    · left
      exact fun z hz ↦ linear_ne_zero ⟨z, hz⟩
        ((comp_ne_zero_iff _ Int.cast_injective Int.cast_zero).mpr ha)
  · simp only [Fin.isValue, Pi.zero_apply, Int.cast_zero, zero_mul, add_zero, one_div]
    apply differentiableOn_const

/-- Auxiliary lemma showing that for any `k : ℤ` and `(a : Fin 2 → ℤ)`
the extension of `eisSummand` is differentiable on `{z : ℂ | 0 < z.im}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant2a7b82f9e961cf95e38ac663b62119abcda3695412e327ab0c7a55dbe28dbae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant2a7b82f9e961cf95e38ac663b62119abcda3695412e327ab0c7a55dbe28dbae9.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27b12b5eac5059370f0b312d21a1db74ae329716` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
