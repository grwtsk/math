# AntivaryOn.div_right₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c6de661-c186-5e58-4683-c4bd3b404d54",
  "kind": "lemma",
  "lexical_name": "AntivaryOn.div_right₀",
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
  "slug": "antivaryon-div-right--3dad90c2a04c764f8de7f698",
  "source": {
    "blob": "50feac862b3242aa38775add8b6b5fb4ce461395",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 324,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Monovary/Variant77f1f02449233f324323c405dd05bafce283a8d114e8f67ef6f42d575f45788a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dad90c2a04c764f8de7f698037f599dc11fd0935f9b743432a715ce8e271e8a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Monovary/Variant77f1f02449233f324323c405dd05bafce283a8d114e8f67ef6f42d575f45788a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c6de661-c186-5e58-4683-c4bd3b404d54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AntivaryOn.div_right₀ (hg₁ : ∀ i ∈ s, 0 ≤ g₁ i) (hg₂ : ∀ i ∈ s, 0 < g₂ i)
    (h₁ : AntivaryOn f g₁ s) (h₂ : MonovaryOn f g₂ s) : AntivaryOn f (g₁ / g₂) s :=
  (h₁.symm.div_left₀ hg₁ hg₂ h₂.symm).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Monovary/Variant77f1f02449233f324323c405dd05bafce283a8d114e8f67ef6f42d575f45788a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Monovary/Variant77f1f02449233f324323c405dd05bafce283a8d114e8f67ef6f42d575f45788a.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50feac862b3242aa38775add8b6b5fb4ce461395` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
