# gram_plus_minus_reflection_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15c7133b-e433-7439-4b9c-a20811a5e249",
  "kind": "theorem",
  "lexical_name": "gram_plus_minus_reflection_nonneg",
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
  "slug": "gram-plus-minus-reflection-nonneg--0fc50ee736f2712f8cff1e22",
  "source": {
    "blob": "687e01c3fad4fae5202a73973d0a69e8449fa5d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 154,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SourceGramQuotient/Variantdcce285c7991fd60dbf455a980cae5ee35781c3843420df499728fe57b2cb6f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fc50ee736f2712f8cff1e224c52ab9705a69466638be92a131ebfd2ef9dffe8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SourceGramQuotient/Variantdcce285c7991fd60dbf455a980cae5ee35781c3843420df499728fe57b2cb6f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15c7133b-e433-7439-4b9c-a20811a5e249`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gram_plus_minus_reflection_nonneg (q : ComplexL2) (I : Finset ℕ)
    (x : GramQuotient q I) :
    0 ≤ (⟪x, x⟫_ℂ + signedForm q I x x).re ∧
    0 ≤ (⟪x, x⟫_ℂ - signedForm q I x x).re := by
  have hp := augmented_gram_nonneg q I x x
  have hm := augmented_gram_nonneg q I x (-x)
  simp only [signedForm, map_neg, inner_neg_left, inner_neg_right,
    Submodule.coe_neg, Complex.add_re, Complex.sub_re, Complex.neg_re] at hp hm ⊢
  constructor <;> linarith

/-- Common-source comparison supplies uniqueness before any cocycle assertion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SourceGramQuotient/Variantdcce285c7991fd60dbf455a980cae5ee35781c3843420df499728fe57b2cb6f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SourceGramQuotient/Variantdcce285c7991fd60dbf455a980cae5ee35781c3843420df499728fe57b2cb6f0.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `687e01c3fad4fae5202a73973d0a69e8449fa5d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
