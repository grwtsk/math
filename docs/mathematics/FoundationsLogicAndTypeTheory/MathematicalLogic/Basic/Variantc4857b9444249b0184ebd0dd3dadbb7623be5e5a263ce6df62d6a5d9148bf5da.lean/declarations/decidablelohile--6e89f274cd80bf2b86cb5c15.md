# decidableLoHiLe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb99ef817de4592ca6b6c151b18f208f3e01c405d62b57996a2be5ad8363e5c6",
  "kind": "instance",
  "lexical_name": "decidableLoHiLe",
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
  "slug": "decidablelohile--6e89f274cd80bf2b86cb5c15",
  "source": {
    "blob": "b3d5f8c44cd0696a289d44d9b11a03203a6be941",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 793,
    "line": 787,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4857b9444249b0184ebd0dd3dadbb7623be5e5a263ce6df62d6a5d9148bf5da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e89f274cd80bf2b86cb5c15cbeec132da24f7ee403ead87bc2e0c3c1dba6e06",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4857b9444249b0184ebd0dd3dadbb7623be5e5a263ce6df62d6a5d9148bf5da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb99ef817de4592ca6b6c151b18f208f3e01c405d62b57996a2be5ad8363e5c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 787–793.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableLoHiLe (lo hi : ℕ) (P : ℕ → Prop) [DecidablePred P] :
    Decidable (∀ x, lo ≤ x → x ≤ hi → P x) :=
  decidable_of_iff (∀ x, lo ≤ x → x < hi + 1 → P x) <|
    ball_congr fun _ _ => imp_congr lt_succ_iff Iff.rfl
#align nat.decidable_lo_hi_le Nat.decidableLoHiLe

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4857b9444249b0184ebd0dd3dadbb7623be5e5a263ce6df62d6a5d9148bf5da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4857b9444249b0184ebd0dd3dadbb7623be5e5a263ce6df62d6a5d9148bf5da.lean#L787).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3d5f8c44cd0696a289d44d9b11a03203a6be941` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
