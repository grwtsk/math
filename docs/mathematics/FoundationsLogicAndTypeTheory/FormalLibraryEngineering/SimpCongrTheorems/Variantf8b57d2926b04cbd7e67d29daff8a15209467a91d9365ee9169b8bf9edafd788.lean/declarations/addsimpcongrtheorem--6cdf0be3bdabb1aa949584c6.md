# addSimpCongrTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6861b354eab23e71811d299be20b6e06cac9c91011dbbaac67b81e1a95fc3652",
  "kind": "def",
  "lexical_name": "addSimpCongrTheorem",
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
  "slug": "addsimpcongrtheorem--6cdf0be3bdabb1aa949584c6",
  "source": {
    "blob": "6309d1b9fe36c55f8e1e9a3becfeed9a946e1895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCongrTheorems/Variantf8b57d2926b04cbd7e67d29daff8a15209467a91d9365ee9169b8bf9edafd788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cdf0be3bdabb1aa949584c6bd364ec185ae1046305768f384e9447c03f5d53c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCongrTheorems/Variantf8b57d2926b04cbd7e67d29daff8a15209467a91d9365ee9169b8bf9edafd788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6861b354eab23e71811d299be20b6e06cac9c91011dbbaac67b81e1a95fc3652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def addSimpCongrTheorem (declName : Name) (attrKind : AttributeKind) (prio : Nat) : MetaM Unit := do
  let lemma ← mkSimpCongrTheorem declName prio
  congrExtension.add lemma attrKind

/--
Registers `simp` congruence lemmas.

A `simp` congruence lemma should prove the equality of two applications of the same function from
the equality of the individual arguments. They are used by `simp` to visit subexpressions of an
application where the default congruence algorithm fails. This is particularly important for
functions where some parameters depend on previous parameters.

Congruence lemmas should have an equality for every parameter, possibly bounded by foralls, with
the right hand side being an application of a parameter on the right-hand side. When applying
congruence theorems, `simp` will first infer parameters from the right-hand side, then try to
simplify each left-hand side of the parameter equalities and finally infer the right-hand side
parameters from the result.

Example:
```
def Option.pbind (o : Option α) (f : (a : α) → o = some a → Option β) : Option β := ...

@[congr]
theorem Option.pbind_congr
    {o o' : Option α} (ho : o = o') -- equality for first parameter
    {f : (a : α) → o = some a → Option β} {f' : (a : α) → o' = some a → Option β}
    (hf : ∀ (a : α) (h : _), f a (ho.trans h) = f' a h) : -- equality for second parameter
    o.pbind f = o'.pbind f' := -- conclusion: equality of the whole application
  ...
```
-/
@[builtin_doc]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCongrTheorems/Variantf8b57d2926b04cbd7e67d29daff8a15209467a91d9365ee9169b8bf9edafd788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCongrTheorems/Variantf8b57d2926b04cbd7e67d29daff8a15209467a91d9365ee9169b8bf9edafd788.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6309d1b9fe36c55f8e1e9a3becfeed9a946e1895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
