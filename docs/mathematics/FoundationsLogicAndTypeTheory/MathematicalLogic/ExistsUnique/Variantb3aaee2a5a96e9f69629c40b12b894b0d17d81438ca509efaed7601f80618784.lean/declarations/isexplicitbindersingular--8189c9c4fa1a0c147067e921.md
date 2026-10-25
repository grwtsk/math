# isExplicitBinderSingular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37352240bfa65764625d93a8eba95eeed0b5ca97979c21f9c32ba69245bb07bf",
  "kind": "def",
  "lexical_name": "isExplicitBinderSingular",
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
  "slug": "isexplicitbindersingular--8189c9c4fa1a0c147067e921",
  "source": {
    "blob": "51c99b37a5fd6e3887cb1b2d171e048ac0311308",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantb3aaee2a5a96e9f69629c40b12b894b0d17d81438ca509efaed7601f80618784.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8189c9c4fa1a0c147067e9219951ab23f80f3dcf5c7ca960ab83268470858575",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantb3aaee2a5a96e9f69629c40b12b894b0d17d81438ca509efaed7601f80618784.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37352240bfa65764625d93a8eba95eeed0b5ca97979c21f9c32ba69245bb07bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isExplicitBinderSingular (xs : TSyntax ``explicitBinders) : Bool :=
  match xs with
  | `(explicitBinders| $_:binderIdent $[: $_]?) => true
  | `(explicitBinders| ($_:binderIdent : $_)) => true
  | _ => false

open TSyntax.Compat in
/--
`∃! x : α, p x` means that there exists a unique `x` in `α` such that `p x`.
This is notation for `ExistsUnique (fun (x : α) ↦ p x)`.

This notation does not allow multiple binders like `∃! (x : α) (y : β), p x y`
as a shorthand for `∃! (x : α), ∃! (y : β), p x y` since it is liable to be misunderstood.
Often, the intended meaning is instead `∃! q : α × β, p q.1 q.2`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantb3aaee2a5a96e9f69629c40b12b894b0d17d81438ca509efaed7601f80618784.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantb3aaee2a5a96e9f69629c40b12b894b0d17d81438ca509efaed7601f80618784.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51c99b37a5fd6e3887cb1b2d171e048ac0311308` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
