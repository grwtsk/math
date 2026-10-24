# arithmetic_image_positivity_does_not_imply_global

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae00389a-ecca-7298-cb14-3d8a8ca5ad87",
  "kind": "theorem",
  "lexical_name": "arithmetic_image_positivity_does_not_imply_global",
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
  "slug": "arithmetic-image-positivity-does-not-imply-global--a1e6b982820f7d856fcbb868",
  "source": {
    "blob": "bac486f0de9614377cc58fd3755dcd4cb39ac1ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 147,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentImagePositivityObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1e6b982820f7d856fcbb86881b099066b8bacd43be32a3f59423befce4c66d1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentImagePositivityObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae00389a-ecca-7298-cb14-3d8a8ca5ad87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmetic_image_positivity_does_not_imply_global (M : ℕ) :
    Function.Injective (arithmeticEmbed (M := M)) ∧
    (∀ u v : Combination M,
      extensionForm (arithmeticEmbed u) (arithmeticEmbed v) =
        sourcePolarizedForm u v) ∧
    (∀ u : Combination M, 0 ≤ extensionDiagonal (arithmeticEmbed u)) ∧
    (∃ x : Extension M,
      x ∉ Set.range (arithmeticEmbed (M := M)) ∧
      extensionDiagonal x < 0) := by
  refine ⟨arithmeticEmbed_injective, ?_, ?_, ?_⟩
  · intro u v
    exact extensionForm_arithmeticEmbed u v
  · intro u
    exact extensionDiagonal_arithmeticEmbed_nonnegative u
  · refine ⟨negativeDirection M,
      negativeDirection_not_in_arithmetic_image M, ?_⟩
    rw [extensionDiagonal_negativeDirection]
    norm_num

/-- A failed implication at the exact order-property level: image positivity
does not entail global nonnegativity even for a Hermitian, sesquilinear form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentImagePositivityObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentImagePositivityObstruction.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bac486f0de9614377cc58fd3755dcd4cb39ac1ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
