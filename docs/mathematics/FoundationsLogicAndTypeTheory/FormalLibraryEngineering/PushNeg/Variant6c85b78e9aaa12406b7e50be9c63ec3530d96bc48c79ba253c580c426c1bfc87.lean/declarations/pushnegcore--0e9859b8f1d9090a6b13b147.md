# pushNegCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3df1a594c4dc98a14ab41e9836c2e01bdbaceed83b9a577b309c9aad9e22dca",
  "kind": "def",
  "lexical_name": "pushNegCore",
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
  "slug": "pushnegcore--0e9859b8f1d9090a6b13b147",
  "source": {
    "blob": "ba7507706cff9cbe195fa758dfbb78389bef1e1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e9859b8f1d9090a6b13b147c69596dcda4d35af8efdfd4683404ba9171f1ebe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3df1a594c4dc98a14ab41e9836c2e01bdbaceed83b9a577b309c9aad9e22dca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def pushNegCore (tgt : Expr) : MetaM Simp.Result := do
  let myctx : Simp.Context :=
    { config := { eta := true },
      simpTheorems := #[ ]
      congrTheorems := (← getSimpCongrTheorems) }
  (·.1) <$> Simp.main tgt myctx (methods := { pre := transformNegation })

/--
Push negations into the conclusion of an expression.
For instance, an expression `¬ ∀ x, ∃ y, x ≤ y` will be transformed by `push_neg` into
`∃ x, ∀ y, y < x`. Variable names are conserved.
This tactic pushes negations inside expressions. For instance, given a hypothesis
```lean
| ¬ ∀ ε > 0, ∃ δ > 0, ∀ x, |x - x₀| ≤ δ → |f x - y₀| ≤ ε)
```
writing `push_neg` will turn the target into
```lean
| ∃ ε, ε > 0 ∧ ∀ δ, δ > 0 → (∃ x, |x - x₀| ≤ δ ∧ ε < |f x - y₀|),
```
(The pretty printer does *not* use the abbreviations `∀ δ > 0` and `∃ ε > 0` but this issue
has nothing to do with `push_neg`).

Note that names are conserved by this tactic, contrary to what would happen with `simp`
using the relevant lemmas.

This tactic has two modes: in standard mode, it transforms `¬(p ∧ q)` into `p → ¬q`, whereas in
distrib mode it produces `¬p ∨ ¬q`. To use distrib mode, use `set_option push_neg.use_distrib true`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba7507706cff9cbe195fa758dfbb78389bef1e1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
