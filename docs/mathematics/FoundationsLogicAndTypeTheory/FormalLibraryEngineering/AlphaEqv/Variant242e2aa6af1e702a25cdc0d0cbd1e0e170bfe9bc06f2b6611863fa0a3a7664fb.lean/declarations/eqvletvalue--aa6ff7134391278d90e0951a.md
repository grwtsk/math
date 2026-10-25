# eqvLetValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3919720900f8a5d93e7912831455f9b51b1a4546580f0d89a296b8e238cb5f7d",
  "kind": "def",
  "lexical_name": "eqvLetValue",
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
  "slug": "eqvletvalue--aa6ff7134391278d90e0951a",
  "source": {
    "blob": "b6c0807de48236df67043146f1edda8541dda912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variant242e2aa6af1e702a25cdc0d0cbd1e0e170bfe9bc06f2b6611863fa0a3a7664fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa6ff7134391278d90e0951a5158d828473701c3d07cbfd8e77944eed2193b5e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variant242e2aa6af1e702a25cdc0d0cbd1e0e170bfe9bc06f2b6611863fa0a3a7664fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3919720900f8a5d93e7912831455f9b51b1a4546580f0d89a296b8e238cb5f7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eqvLetValue (e₁ e₂ : LetValue pu) : EqvM Bool := do
  match e₁, e₂ with
  | .lit v₁, .lit v₂ => return v₁ == v₂
  | .erased, .erased => return true
  | .proj s₁ i₁ x₁ _, .proj s₂ i₂ x₂ _ => pure (s₁ == s₂ && i₁ == i₂) <&&> eqvFVar x₁ x₂
  | .const n₁ us₁ as₁ _, .const n₂ us₂ as₂ _ => pure (n₁ == n₂ && us₁ == us₂) <&&> eqvArgs as₁ as₂
  | .fvar f₁ as₁, .fvar f₂ as₂ => eqvFVar f₁ f₂ <&&> eqvArgs as₁ as₂
  | .ctor i₁ as₁ _, .ctor i₂ as₂ _ => pure (i₁ == i₂) <&&> eqvArgs as₁ as₂
  | .oproj i₁ v₁ _, .oproj i₂ v₂ _ => pure (i₁ == i₂) <&&> eqvFVar v₁ v₂
  | .uproj i₁ v₁ _, .uproj i₂ v₂ _ => pure (i₁ == i₂) <&&> eqvFVar v₁ v₂
  | .sproj i₁ o₁ v₁ _, .sproj i₂ o₂ v₂ _ => pure (i₁ == i₂ && o₁ == o₂) <&&> eqvFVar v₁ v₂
  | .fap f₁ as₁ _, .fap f₂ as₂ _ => pure (f₁ == f₂) <&&> eqvArgs as₁ as₂
  | .pap f₁ as₁ _, .pap f₂ as₂ _ => pure (f₁ == f₂) <&&> eqvArgs as₁ as₂
  | .reset n₁ v₁ _, .reset n₂ v₂ _ => pure (n₁ == n₂) <&&> eqvFVar v₁ v₂
  | .reuse v₁ i₁ u₁ as₁ _, .reuse v₂ i₂ u₂ as₂ _ =>
    pure (i₁ == i₂ && u₁ == u₂) <&&> eqvFVar v₁ v₂ <&&> eqvArgs as₁ as₂
  | .box ty₁ v₁ _, .box ty₂ v₂ _ => eqvType ty₁ ty₂ <&&> eqvFVar v₁ v₂
  | .unbox v₁ _, .unbox v₂ _ => eqvFVar v₁ v₂
  | .isShared v₁ _, .isShared v₂ _ => eqvFVar v₁ v₂
  | _, _ => return false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variant242e2aa6af1e702a25cdc0d0cbd1e0e170bfe9bc06f2b6611863fa0a3a7664fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variant242e2aa6af1e702a25cdc0d0cbd1e0e170bfe9bc06f2b6611863fa0a3a7664fb.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6c0807de48236df67043146f1edda8541dda912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
