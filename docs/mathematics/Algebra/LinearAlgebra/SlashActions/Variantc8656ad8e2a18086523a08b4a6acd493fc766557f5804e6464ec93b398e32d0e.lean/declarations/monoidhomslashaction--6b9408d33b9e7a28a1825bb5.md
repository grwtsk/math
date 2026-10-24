# monoidHomSlashAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:271207c2c9626cda771f40702621193c69256913a5bfd3187c7c623e36827724",
  "kind": "def",
  "lexical_name": "monoidHomSlashAction",
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
  "slug": "monoidhomslashaction--6b9408d33b9e7a28a1825bb5",
  "source": {
    "blob": "0367fab1220c515ade50ab2e5ed6d6960ee78fb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b9408d33b9e7a28a1825bb54eeb8772d9d5625169bf60c1544c32b7efed30cd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:271207c2c9626cda771f40702621193c69256913a5bfd3187c7c623e36827724`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoidHomSlashAction {β G H α γ : Type*} [Group G] [AddMonoid α] [SMul γ α] [Group H]
    [SlashAction β G α γ] (h : H →* G) : SlashAction β H α γ where
  map k g := SlashAction.map γ k (h g)
  zero_slash k g := SlashAction.zero_slash k (h g)
  slash_one k a := by simp only [map_one, SlashAction.slash_one]
  slash_mul k g gg a := by simp only [map_mul, SlashAction.slash_mul]
  add_slash _ g _ _ := SlashAction.add_slash _ (h g) _ _

namespace ModularForm

noncomputable section

/-- The weight `k` action of `GL (Fin 2) ℝ` on functions `f : ℍ → ℂ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0367fab1220c515ade50ab2e5ed6d6960ee78fb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
