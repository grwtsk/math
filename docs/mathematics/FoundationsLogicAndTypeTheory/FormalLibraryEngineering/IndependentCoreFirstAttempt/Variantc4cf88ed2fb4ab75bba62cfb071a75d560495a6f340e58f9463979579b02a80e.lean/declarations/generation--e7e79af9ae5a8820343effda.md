# Generation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:281b2744ed12f700a316a21d25f9d2433cfc0c9875fc30174f6a3ba55d7434bb",
  "kind": "def",
  "lexical_name": "Generation",
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
  "slug": "generation--e7e79af9ae5a8820343effda",
  "source": {
    "blob": "24b79a45594b1d7c2785a2efbf2897e6c32d55b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1224,
    "line": 1212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variantc4cf88ed2fb4ab75bba62cfb071a75d560495a6f340e58f9463979579b02a80e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7e79af9ae5a8820343effda00b33baf1ecb340d981cd055e552ddaf70b490f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variantc4cf88ed2fb4ab75bba62cfb071a75d560495a6f340e58f9463979579b02a80e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:281b2744ed12f700a316a21d25f9d2433cfc0c9875fc30174f6a3ba55d7434bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1212–1224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Generation (P : Specification S) (Γ : List (Expr S))
    (M T : Expr S) : Prop :=
  match M with
  | .var n => ∃ A, Lookup Γ n A ∧ Converts T A
  | .sort s => ∃ t, P.axioms s t ∧ Converts T (.sort t)
  | .app f a => ∃ A B, HasType P Γ f (.pi A B) ∧ HasType P Γ a A ∧
      Converts T (B.instantiate a)
  | .lam A b => ∃ B s, HasType P (A :: Γ) b B ∧
      HasType P Γ (.pi A B) (.sort s) ∧ Converts T (.pi A B)
  | .pi A B => ∃ s₁ s₂ s₃, HasType P Γ A (.sort s₁) ∧
      HasType P (A :: Γ) B (.sort s₂) ∧ P.rule s₁ s₂ s₃ ∧
      Converts T (.sort s₃)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variantc4cf88ed2fb4ab75bba62cfb071a75d560495a6f340e58f9463979579b02a80e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variantc4cf88ed2fb4ab75bba62cfb071a75d560495a6f340e58f9463979579b02a80e.lean#L1212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24b79a45594b1d7c2785a2efbf2897e6c32d55b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
