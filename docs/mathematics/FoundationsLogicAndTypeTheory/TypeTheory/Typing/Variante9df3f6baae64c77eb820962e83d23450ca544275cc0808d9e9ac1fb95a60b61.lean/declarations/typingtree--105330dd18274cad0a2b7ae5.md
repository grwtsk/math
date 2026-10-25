# TypingTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5cebf06b893b019955312331cb7678c548e0251af3efdbdccf5421ce7fbe734",
  "kind": "inductive",
  "lexical_name": "TypingTree",
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
  "slug": "typingtree--105330dd18274cad0a2b7ae5",
  "source": {
    "blob": "748568b1b47bbea3dd3ff6bf51ee6fd1523db07f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 707,
    "line": 687,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variante9df3f6baae64c77eb820962e83d23450ca544275cc0808d9e9ac1fb95a60b61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:105330dd18274cad0a2b7ae5e598647a274e09a63d9087ee686ea3630cf6a32b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variante9df3f6baae64c77eb820962e83d23450ca544275cc0808d9e9ac1fb95a60b61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5cebf06b893b019955312331cb7678c548e0251af3efdbdccf5421ce7fbe734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 687–707.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive TypingTree {S : Type u} (P : Specification S) :
    List (Expr S) → Expr S → Expr S → Type u
  | var {Γ n A T} (typing : HasType P Γ (.var n) T)
      (declaration : Lookup Γ n A) (convert : Converts T A) : TypingTree P Γ (.var n) T
  | sort {Γ s t T} (typing : HasType P Γ (.sort s) T)
      (axioms : P.axioms s t) (convert : Converts T (.sort t)) : TypingTree P Γ (.sort s) T
  | product {Γ A B a b c T} (typing : HasType P Γ (.pi A B) T)
      (domain : TypingTree P Γ A (.sort a)) (body : TypingTree P (A :: Γ) B (.sort b))
      (rule : P.rule a b c) (convert : Converts T (.sort c)) : TypingTree P Γ (.pi A B) T
  | abstraction {Γ A b B a s T} (typing : HasType P Γ (.lam A b) T)
      (annotation : TypingTree P Γ A (.sort a)) (body : TypingTree P (A :: Γ) b B)
      (product : HasType P Γ (.pi A B) (.sort s)) (convert : Converts T (.pi A B)) :
      TypingTree P Γ (.lam A b) T
  | application {Γ f a A B T} (typing : HasType P Γ (.app f a) T)
      (function : TypingTree P Γ f (.pi A B)) (argument : TypingTree P Γ a A)
      (convert : Converts T (B.instantiate a)) : TypingTree P Γ (.app f a) T

namespace TypingTree
variable {S : Type u} {P : Specification S} {Γ : List (Expr S)} {M T : Expr S}

/-- Root expected judgment, including the potentially unsorted final sort. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variante9df3f6baae64c77eb820962e83d23450ca544275cc0808d9e9ac1fb95a60b61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variante9df3f6baae64c77eb820962e83d23450ca544275cc0808d9e9ac1fb95a60b61.lean#L687).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `748568b1b47bbea3dd3ff6bf51ee6fd1523db07f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
