# ComponentInterface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d345f2c7aa8aaeb791f53b2ba5d42eea49e6a4f20d2bc9f53a300b52dda86544",
  "kind": "structure",
  "lexical_name": "ComponentInterface",
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
  "slug": "componentinterface--11f2942536b33c59b2ed402e",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4355,
    "line": 4316,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11f2942536b33c59b2ed402e79ca7bf43dc2ee1a795b95b2edc75d70afc9b32e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d345f2c7aa8aaeb791f53b2ba5d42eea49e6a4f20d2bc9f53a300b52dda86544`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4316–4355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ComponentInterface {S : Type u} {P : Specification S} (Ω : ContextTower P)
    (hw : SystemWeaklyNormalizing P) (C : Set (Set S)) where
  Env : List (Expr S) → Type v
  images : {Γ : List (Expr S)} → Env Γ → Nat → Expr S
  typed : ∀ {Γ} (e : Env Γ), Ω.TypedSubstitution Γ (images e)
  inhabit : ∀ {Γ} (σ : Nat → Expr S), Ω.TypedSubstitution Γ σ →
    ∃ e : Env Γ, images e = σ
  Ext : {Γ : List (Expr S)} → {D : Expr S} → Env Γ → Env (D :: Γ) → Expr S → Prop
  ext_images : ∀ {Γ D} {e : Env Γ} {e' : Env (D :: Γ)} {n}, Ext e e' n →
    images e' = Expr.extend (images e) n
  extend : ∀ {Γ D s} (e : Env Γ), HasType P Γ D (.sort s) → ∀ n,
    Ω.HasType n (D.subst (images e)) → ∃ e' : Env (D :: Γ), Ext e e' n
  R : {Γ : List (Expr S)} → Expr S → Env Γ → Set (Expr S)
  candidate : ∀ {Γ A} (e : Env Γ), Expected P Γ A →
    Candidates.IsCandidate Ω (A.subst (images e)).normalForm (R A e)
  conversion : ∀ {Γ A B} (e : Env Γ), Expected P Γ A → Expected P Γ B →
    Converts A B → R A e = R B e
  outside : ∀ {Γ A} (e : Env Γ), Expected P Γ A →
    (Profile P Γ A ∉ C ∨ Ω.profile (A.subst (images e)) ∉ C) →
    R A e = Candidates.Top Ω (A.subst (images e)).normalForm
  weakening : ∀ {Γ D A s} {e : Env Γ} {e' : Env (D :: Γ)} {n},
    HasType P Γ D (.sort s) → Expected P Γ A → Ext e e' n →
    R (A.rename Nat.succ) e' = R A e
  product_intro : ∀ {Γ D E s} (e : Env Γ), HasType P Γ (.pi D E) (.sort s) →
    Profile P Γ (.pi D E) ∈ C → Ω.profile ((Expr.pi D E).subst (images e)) ∈ C →
    ∀ h, h ∈ Candidates.Top Ω ((Expr.pi D E).subst (images e)).normalForm →
    (∀ n, n ∈ R D e → ∀ e' : Env (D :: Γ), Ext e e' n → Expr.app h n ∈ R E e') →
    h ∈ R (.pi D E) e
  specialization : ∀ {Γ D E s N} (e : Env Γ), HasType P Γ (.pi D E) (.sort s) →
    HasType P Γ N D → Profile P Γ (.pi D E) ∈ C →
    Ω.profile ((Expr.pi D E).subst (images e)) ∈ C →
    ∀ h, h ∈ R (.pi D E) e → N.subst (images e) ∈ R D e →
    Expr.app h (N.subst (images e)) ∈ R (E.instantiate N) e

namespace ComponentInterface
open Candidates
variable {S : Type u} {P : Specification S} {Ω : ContextTower P}
variable {hw : SystemWeaklyNormalizing P} {U C : Set (Set S)}
variable (J : ComponentInterface.{u,v} Ω hw C)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L4316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
