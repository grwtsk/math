# rename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:347b06ae20d0e2b46fe1b55b88dd9e19105ac1df5286e985742b46226a666fe5",
  "kind": "def",
  "lexical_name": "rename",
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
  "slug": "rename--d1d4b2ed5bd7db4f0960f3bc",
  "source": {
    "blob": "f06d5c7772a9e40940e303f0f187c184a751737a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1730,
    "line": 1711,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variant423c0f2dae5c7f44d059216ce008df22e8d2822cc029bab11381146cf102d750.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1d4b2ed5bd7db4f0960f3bc02d2bd5e6160695c536886f4fe67042ed16988ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variant423c0f2dae5c7f44d059216ce008df22e8d2822cc029bab11381146cf102d750.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:347b06ae20d0e2b46fe1b55b88dd9e19105ac1df5286e985742b46226a666fe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1711–1730.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rename (t : TypingTree P Γ M T) {Δ : List (Expr S)} (hΔ : ValidContext P Δ)
    (ρ : Nat → Nat) (hρ : DeclRenaming Γ Δ ρ) :
    TypingTree P Δ (M.rename ρ) (T.rename ρ) := by
  induction t generalizing Δ ρ with
  | var h hd hc => exact .var (h.rename hΔ ρ (hρ.typed hΔ)) (hρ _ _ hd) (hc.rename ρ)
  | sort h ha hc => exact .sort (h.rename hΔ ρ (hρ.typed hΔ)) ha (hc.rename ρ)
  | @product Γ A B a b c T h d e hr hc ihd ihe =>
      have hA : HasType P Δ (A.rename ρ) (.sort a) := d.typing.rename hΔ ρ (hρ.typed hΔ)
      exact .product (h.rename hΔ ρ (hρ.typed hΔ)) (ihd hΔ ρ hρ)
        (ihe (.cons hΔ hA) _ (hρ.lift A)) hr (hc.rename ρ)
  | @abstraction Γ A b B a s T h d e hp hc ihd ihe =>
      have hA : HasType P Δ (A.rename ρ) (.sort a) := d.typing.rename hΔ ρ (hρ.typed hΔ)
      exact .abstraction (h.rename hΔ ρ (hρ.typed hΔ)) (ihd hΔ ρ hρ)
        (ihe (.cons hΔ hA) _ (hρ.lift A)) (hp.rename hΔ ρ (hρ.typed hΔ)) (hc.rename ρ)
  | application h f a hc ihf iha =>
      apply TypingTree.application (h.rename hΔ ρ (hρ.typed hΔ)) (ihf hΔ ρ hρ) (iha hΔ ρ hρ)
      simpa only [Expr.instantiate_rename] using hc.rename ρ

namespace DeclRenaming
variable {Δ : List (Expr S)}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variant423c0f2dae5c7f44d059216ce008df22e8d2822cc029bab11381146cf102d750.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variant423c0f2dae5c7f44d059216ce008df22e8d2822cc029bab11381146cf102d750.lean#L1711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06d5c7772a9e40940e303f0f187c184a751737a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
