# toAppExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b413708fb1736f2ba07ec7d49604ed0b3c78d527a9e73adbf3d4273d134ef93",
  "kind": "def",
  "lexical_name": "toAppExpr",
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
  "slug": "toappexpr--cd6bf815954f3ec6d7cb3778",
  "source": {
    "blob": "ed2d0d1cb09dbc9ef84aa5e6d5e2512b97d40652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 91,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd6bf815954f3ec6d7cb37788fa3809cc7b36aa0433830380c3eb9f91c65186f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b413708fb1736f2ba07ec7d49604ed0b3c78d527a9e73adbf3d4273d134ef93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toAppExpr (e : Expr) : MetaM Expr := do
  mapForallTelescope (fun e => do simpType catAppSimp (← mkAppM ``NatTrans.congr_app #[e])) e

/--
Adding `@[to_app]` to a lemma named `F` of shape `∀ .., η = θ`, where `η θ : f ⟶ g` are 2-morphisms
in some bicategory, create a new lemma named `F_app`. This lemma is obtained by first specializing
the bicategory in which the equality is taking place to `Cat`, then applying `NatTrans.congr_app`
to obtain a proof of `∀ ... (X : Cat), η.app X = θ.app X`, and finally simplifying the conclusion
using some basic lemmas in the bicategory `Cat`:
`Cat.whiskerLeft_app`, `Cat.whiskerRight_app`, `Cat.id_app`, `Cat.comp_app` and `Cat.eqToHom_app`

So, for example, if the conclusion of `F` is `f ◁ η = θ` then the conclusion of `F_app` will be
`η.app (f.obj X) = θ.app X`.

This is useful for automatically generating lemmas that can be applied to expressions of 1-morphisms
in `Cat` which contain components of 2-morphisms.

Note that if you want both the lemma and the new lemma to be `simp` lemmas, you should tag the lemma
`@[to_app (attr := simp)]`. The variant `@[simp, to_app]` on a lemma `F` will tag `F` with
`@[simp]`, but not `F_app` (this is sometimes useful).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed2d0d1cb09dbc9ef84aa5e6d5e2512b97d40652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
