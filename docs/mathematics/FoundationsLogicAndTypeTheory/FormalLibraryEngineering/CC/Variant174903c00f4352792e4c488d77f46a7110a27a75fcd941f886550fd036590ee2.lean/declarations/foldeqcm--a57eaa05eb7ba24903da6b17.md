# foldEqcM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7debae097500283fb364a1678535ff72a0c982d5683617b57f0bae75f449439a",
  "kind": "def",
  "lexical_name": "foldEqcM",
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
  "slug": "foldeqcm--a57eaa05eb7ba24903da6b17",
  "source": {
    "blob": "a5d47f47ccfc0f846dec535e0dc0beddeb24755e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 176,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a57eaa05eb7ba24903da6b175b7ccc5d309447fff6f4e77c2bc8b0cdcc0d7397",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7debae097500283fb364a1678535ff72a0c982d5683617b57f0bae75f449439a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def foldEqcM {α} {m : Type → Type} [Monad m] (s : CCState) (e : Expr) (a : α)
    (f : α → Expr → m α) : m α :=
  foldEqc s e (return a) fun act e => do
    let a ← act
    f a e

end CCState

/--
Applies congruence closure to solve the given metavariable.
This procedure tries to solve the goal by chaining
equalities from context and applying congruence (i.e. if `a = b`, then `f a = f b`).

The tactic works by building an equality matching graph. It's a graph where
the vertices are terms and they are linked by edges if they are known to
be equal. Once you've added all the equalities in your context, you take
the transitive closure of the graph and, for each connected component
(i.e. equivalence class) you can elect a term that will represent the
whole class and store proofs that the other elements are equal to it.
You then take the transitive closure of these equalities under the
congruence lemmas.
The `cc` implementation in Lean does a few more tricks: for example it
derives `a = b` from `Nat.succ a = Nat.succ b`, and `Nat.succ a != Nat.zero` for any `a`.
* The starting reference point is Nelson, Oppen, [Fast decision procedures based on congruence
  closure](http://www.cs.colorado.edu/~bec/courses/csci5535-s09/reading/nelson-oppen-congruence.pdf),
  Journal of the ACM (1980)
* The congruence lemmas for dependent type theory as used in Lean are described in
[Congruence closure in intensional type theory](https://leanprover.github.io/papers/congr.pdf)
(de Moura, Selsam IJCAR 2016).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d47f47ccfc0f846dec535e0dc0beddeb24755e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
