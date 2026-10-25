# ProductGood

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e5933f0f7e2ef93bea1f00019105387667429ed412881466593bd945e5f948d",
  "kind": "abbrev",
  "lexical_name": "ProductGood",
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
  "slug": "productgood--ce33055bad98558dc5c00eb8",
  "source": {
    "blob": "38bfb1ca6249cfb327385cac6688e50254e395e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 366,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce33055bad98558dc5c00eb8c6b3cb2f002f4397da6473d7bc54034b868b9c0a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e5933f0f7e2ef93bea1f00019105387667429ed412881466593bd945e5f948d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ProductGood {Γ : List (Expr S)} {D E : Expr S} {a b : S}
    (d : TypingTree P Γ D (.sort a)) (e : TypingTree P (D :: Γ) E (.sort b)) (ξ : Nat → Expr
      S) : Prop :=
  (Ω.profile (D.subst ξ) ∈ C → ReadGood Ω C d ξ) ∧
    ∀ n, Ω.HasType n (D.subst ξ) → Ω.profile (E.subst (Expr.consSub n ξ)) ∈ C →
      ReadGood Ω C e (Expr.consSub n ξ)
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38bfb1ca6249cfb327385cac6688e50254e395e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
