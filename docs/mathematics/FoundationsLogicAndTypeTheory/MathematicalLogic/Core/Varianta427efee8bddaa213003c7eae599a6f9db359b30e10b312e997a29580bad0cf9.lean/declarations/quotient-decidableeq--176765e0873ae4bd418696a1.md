# Quotient.decidableEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d316bce34dfeaa19bdcb0bf34de09f24047d8973b01402f93a3c63059147bdbd",
  "kind": "instance",
  "lexical_name": "Quotient.decidableEq",
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
  "slug": "quotient-decidableeq--176765e0873ae4bd418696a1",
  "source": {
    "blob": "1fab3e725a3b89d0f36bba9b929c61cb1a68b3c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2287,
    "line": 2268,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:176765e0873ae4bd418696a1408157d847fcaab1d46f905ecadf9e3a0cdcf850",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d316bce34dfeaa19bdcb0bf34de09f24047d8973b01402f93a3c63059147bdbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2268–2287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Quotient.decidableEq {α : Sort u} {s : Setoid α} [d : ∀ (a b : α), Decidable (a ≈ b)]
    : DecidableEq (Quotient s) :=
  fun (q₁ q₂ : Quotient s) =>
    Quotient.recOnSubsingleton₂ q₁ q₂
      fun a₁ a₂ =>
        match d a₁ a₂ with
        | isTrue h₁  => isTrue (Quotient.sound h₁)
        | isFalse h₂ => isFalse fun h => absurd (Quotient.exact h) h₂

/-! # Function extensionality -/

/--
**Function extensionality.** If two functions return equal results for all possible arguments, then
they are equal.

It is called “extensionality” because it provides a way to prove two objects equal based on the
properties of the underlying mathematical functions, rather than based on the syntax used to denote
them. Function extensionality is a theorem that can be [proved using quotient
types](lean-manual://section/quotient-funext).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean#L2268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fab3e725a3b89d0f36bba9b929c61cb1a68b3c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
