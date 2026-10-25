# Proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fef85061eedc9a34436cabde62d8b5e35af2bbc0e62076b8f676a88c21eaf97b",
  "kind": "inductive",
  "lexical_name": "Proof",
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
  "slug": "proof--eec76e40e6aaa06b8c076c36",
  "source": {
    "blob": "042badf4019c528ad72566c87f4f9abf15b3fbf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variantae34c93e4de66c745f4d0b1c660fb12e73cfd5c0f9edc81b9cf2469d1a62b9b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eec76e40e6aaa06b8c076c36187b709421c90d6c29b4ed3b7b8b91141c24b0d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variantae34c93e4de66c745f4d0b1c660fb12e73cfd5c0f9edc81b9cf2469d1a62b9b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fef85061eedc9a34436cabde62d8b5e35af2bbc0e62076b8f676a88c21eaf97b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Proof
  /-- `⊢ A`, causes failure during reconstruction -/
  | sorry : Proof
  /-- `(n: A) ⊢ A` -/
  | hyp (n : Name) : Proof
  /-- `⊢ ⊤` -/
  | triv : Proof
  /-- `(p: ⊥) ⊢ A` -/
  | exfalso' (p : Proof) : Proof
  /-- `(p: (x: A) ⊢ B) ⊢ A → B` -/
  | intro (x : Name) (p : Proof) : Proof
  /--
  * `ak = .and`: `(p: A ∧ B) ⊢ A`
  * `ak = .iff`: `(p: A ↔ B) ⊢ A → B`
  * `ak = .eq`: `(p: A = B) ⊢ A → B`
  -/
  | andLeft (ak : AndKind) (p : Proof) : Proof
  /--
  * `ak = .and`: `(p: A ∧ B) ⊢ B`
  * `ak = .iff`: `(p: A ↔ B) ⊢ B → A`
  * `ak = .eq`: `(p: A = B) ⊢ B → A`
  -/
  | andRight (ak : AndKind) (p : Proof) : Proof
  /--
  * `ak = .and`: `(p₁: A) (p₂: B) ⊢ A ∧ B`
  * `ak = .iff`: `(p₁: A → B) (p₁: B → A) ⊢ A ↔ B`
  * `ak = .eq`: `(p₁: A → B) (p₁: B → A) ⊢ A = B`
  -/
  | andIntro (ak : AndKind) (p₁ p₂ : Proof) : Proof
  /--
  * `ak = .and`: `(p: A ∧ B → C) ⊢ A → B → C`
  * `ak = .iff`: `(p: (A ↔ B) → C) ⊢ (A → B) → (B → A) → C`
  * `ak = .eq`: `(p: (A = B) → C) ⊢ (A → B) → (B → A) → C`
  -/
  | curry (ak : AndKind) (p : Proof) : Proof
  /-- This is a partial application of curry.
  * `ak = .and`: `(p: A ∧ B → C) (q : A) ⊢ B → C`
  * `ak = .iff`: `(p: (A ↔ B) → C) (q: A → B) ⊢ (B → A) → C`
  * `ak = .eq`: `(p: (A ↔ B) → C) (q: A → B) ⊢ (B → A) → C`
  -/
  | curry₂ (ak : AndKind) (p q : Proof) : Proof
  /-- `(p: A → B) (q: A) ⊢ B` -/
  | app' : Proof → Proof → Proof
  /-- `(p: A ∨ B → C) ⊢ A → C` -/
  | orImpL (p : Proof) : Proof
  /-- `(p: A ∨ B → C) ⊢ B → C` -/
  | orImpR (p : Proof) : Proof
  /-- `(p: A) ⊢ A ∨ B` -/
  | orInL (p : Proof) : Proof
  /-- `(p: B) ⊢ A ∨ B` -/
  | orInR (p : Proof) : Proof
  /-- `(p₁: A ∨ B) (p₂: (x: A) ⊢ C) (p₃: (x: B) ⊢ C) ⊢ C` -/
  | orElim' (p₁ : Proof) (x : Name) (p₂ p₃ : Proof) : Proof
  /-- `(p₁: Decidable A) (p₂: (x: A) ⊢ C) (p₃: (x: ¬ A) ⊢ C) ⊢ C` -/
  | decidableElim (classical : Bool) (p₁ x : Name) (p₂ p₃ : Proof) : Proof
  /--
  * `classical = false`: `(p: Decidable A) ⊢ A ∨ ¬A`
  * `classical = true`: `(p: Prop) ⊢ p ∨ ¬p`
  -/
  | em (classical : Bool) (p : Name) : Proof
  /-- The variable `x` here names the variable that will be used in the elaborated proof.
  * `(p: ((x:A) → B) → C) ⊢ B → C`
  -/
  | impImpSimp (x : Name) (p : Proof) : Proof
  deriving Lean.ToExpr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variantae34c93e4de66c745f4d0b1c660fb12e73cfd5c0f9edc81b9cf2469d1a62b9b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variantae34c93e4de66c745f4d0b1c660fb12e73cfd5c0f9edc81b9cf2469d1a62b9b5.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `042badf4019c528ad72566c87f4f9abf15b3fbf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
