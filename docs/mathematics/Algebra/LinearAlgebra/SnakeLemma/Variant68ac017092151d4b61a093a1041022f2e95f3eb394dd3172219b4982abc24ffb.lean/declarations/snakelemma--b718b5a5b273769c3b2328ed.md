# SnakeLemma.δ'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0447ca4cd7c4e1269c8b3a8c421e07331723ad5708ac8be39905ba4ffe6a0c08",
  "kind": "def",
  "lexical_name": "SnakeLemma.δ'",
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
  "slug": "snakelemma--b718b5a5b273769c3b2328ed",
  "source": {
    "blob": "bb7a8776f1f85debe7751c11d063b505769015b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 228,
    "path": "GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant68ac017092151d4b61a093a1041022f2e95f3eb394dd3172219b4982abc24ffb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b718b5a5b273769c3b2328edccc3c40b12867df67edac6895818135dd24caf80",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SnakeLemma/Variant68ac017092151d4b61a093a1041022f2e95f3eb394dd3172219b4982abc24ffb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0447ca4cd7c4e1269c8b3a8c421e07331723ad5708ac8be39905ba4ffe6a0c08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def SnakeLemma.δ' (hf₂ : Surjective f₂) (hg₁ : Injective g₁) : K₃ →ₗ[R] C₁ :=
  δ i₁ i₂ i₃ f₁ f₂ hf g₁ g₂ hg h₁ h₂ _ (funext (surjInv_eq hf₂)) _ (invFun_comp hg₁) ι₃ hι₃ π₁ hπ₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SnakeLemma/Variant68ac017092151d4b61a093a1041022f2e95f3eb394dd3172219b4982abc24ffb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant68ac017092151d4b61a093a1041022f2e95f3eb394dd3172219b4982abc24ffb.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb7a8776f1f85debe7751c11d063b505769015b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
