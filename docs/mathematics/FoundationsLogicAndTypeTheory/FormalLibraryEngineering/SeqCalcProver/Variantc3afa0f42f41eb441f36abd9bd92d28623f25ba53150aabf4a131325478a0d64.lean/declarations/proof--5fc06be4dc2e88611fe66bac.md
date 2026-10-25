# Proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:298c2c7e5e3e187ca958157e61085e33fe294aa8e81792da3d8072dc5bc5afb0",
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
  "slug": "proof--5fc06be4dc2e88611fe66bac",
  "source": {
    "blob": "b22ba5bd4f9ff9e61ba11eb2e4c8b21875bd1940",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 413,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variantc3afa0f42f41eb441f36abd9bd92d28623f25ba53150aabf4a131325478a0d64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fc06be4dc2e88611fe66bacd7a3bd518f2c74645f6f62a06f9c2640cd7413d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variantc3afa0f42f41eb441f36abd9bd92d28623f25ba53150aabf4a131325478a0d64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:298c2c7e5e3e187ca958157e61085e33fe294aa8e81792da3d8072dc5bc5afb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Proof : (Γ Δ : List (Form Φ)) → Prop
  | basic Γ Δ n : Proof (♩n :: Γ) (♩n :: Δ)
  | fls_l Γ Δ : Proof (⊥ :: Γ) Δ
  | imp_l Γ Δ φ ψ : Proof Γ (φ :: Δ) → Proof (ψ :: Γ) Δ → Proof (φ ⇒ ψ :: Γ) Δ
  | imp_r Γ Δ φ ψ: Proof (φ :: Γ) (ψ :: Δ) → Proof Γ (φ ⇒ ψ :: Δ)
  | per_l Γ Γ' Δ : Proof Γ Δ → Γ' ↭ Γ → Proof Γ' Δ
  | per_r Γ Δ Δ' : Proof Γ Δ → Δ ↭ Δ' → Proof Γ Δ'

attribute [aesop safe apply] Proof.basic Proof.fls_l
attribute [aesop unsafe 50% apply] Proof.imp_l Proof.imp_r
attribute [aesop unsafe 20% apply] Proof.per_l Proof.per_r

namespace Proof

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variantc3afa0f42f41eb441f36abd9bd92d28623f25ba53150aabf4a131325478a0d64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variantc3afa0f42f41eb441f36abd9bd92d28623f25ba53150aabf4a131325478a0d64.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22ba5bd4f9ff9e61ba11eb2e4c8b21875bd1940` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
