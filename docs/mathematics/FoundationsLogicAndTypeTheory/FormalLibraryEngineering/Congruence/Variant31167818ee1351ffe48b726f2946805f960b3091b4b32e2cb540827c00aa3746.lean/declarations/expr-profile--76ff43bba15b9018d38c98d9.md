# expr_profile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8ca4d2f-bba0-adbf-f1cb-ca5dd8a77def",
  "kind": "theorem",
  "lexical_name": "expr_profile",
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
  "slug": "expr-profile--76ff43bba15b9018d38c98d9",
  "source": {
    "blob": "bc403ba71cda7183d54fd26b7e8deeacf7119877",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 895,
    "line": 892,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76ff43bba15b9018d38c98d9487f59b42e4da153df277b08a6bef4987af709f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8ca4d2f-bba0-adbf-f1cb-ca5dd8a77def`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 892–895.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expr_profile (he : Compatible Γ σ τ) (hσ : Ω.TypedSubstitution Γ σ)
    (hτ : Ω.TypedSubstitution Γ τ) {M A : Expr S} (h : PureTypeSystem.HasType P Γ M A) :
    Ω.profile (M.subst σ) = Ω.profile (M.subst τ) := by
  rw [← Ω.profile_normalForm (M.subst σ),← Ω.profile_normalForm (M.subst τ),he.expr_eq hw hσ hτ h]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean#L892).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc403ba71cda7183d54fd26b7e8deeacf7119877` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
