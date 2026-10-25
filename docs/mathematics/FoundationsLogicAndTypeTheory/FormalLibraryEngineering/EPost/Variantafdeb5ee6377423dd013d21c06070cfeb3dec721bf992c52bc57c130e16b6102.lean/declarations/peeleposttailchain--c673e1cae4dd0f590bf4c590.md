# peelEPostTailChain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c12524f9d0c0c49ab524ecbeac8e497b1043316ab444087a177a810af72f84b2",
  "kind": "def",
  "lexical_name": "peelEPostTailChain",
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
  "slug": "peeleposttailchain--c673e1cae4dd0f590bf4c590",
  "source": {
    "blob": "7533619ad4038185799e1e21fc5a58b29cf0103d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EPost/Variantafdeb5ee6377423dd013d21c06070cfeb3dec721bf992c52bc57c130e16b6102.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c673e1cae4dd0f590bf4c590c760668f2bedbc49b0fd04d093e761f1eb9c8b4f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EPost/Variantafdeb5ee6377423dd013d21c06070cfeb3dec721bf992c52bc57c130e16b6102.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c12524f9d0c0c49ab524ecbeac8e497b1043316ab444087a177a810af72f84b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def peelEPostTailChain (curr : Expr) (idx : Nat := 0) : Expr × Nat :=
  curr.consumeMData.withApp fun fn args =>
    if fn.isConstOf ``EPost.Cons.tail && args.size > 0 then
      peelEPostTailChain args[args.size - 1]! (idx + 1)
    else
      (curr, idx)

/--
When the exception postcondition is `⊥`, the RHS of a `pre ⊑ EPost.Cons.head ⊥ x₁ … xₙ` goal is
propositionally—but not definitionally—equal to `⊥`. This rewrites the goal to `pre ⊑ ⊥`,
constructing the equality proof from `EPost.Cons.head_bot` (for the head projection) and
`bot_apply` (for each excess argument).

The proof term is built directly with `mkApp`/`mkConst` and instances extracted from the existing
goal, avoiding `mkAppM`/instance synthesis (which is both expensive and unable to unify `max`-of-
universe-variable instance levels in the abstract-monad setting).

`head`/`args` come from `rhs.withApp`, where `rhs = EPost.Cons.head eh et ⊥ x₁ … xₙ`, and `target`
is the full `pre ⊑ rhs` entailment. Returns the rewritten goal, or `none` if `args[2]` is not `⊥`
or the lattice instances are not in the expected shape (the caller then falls through). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EPost/Variantafdeb5ee6377423dd013d21c06070cfeb3dec721bf992c52bc57c130e16b6102.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EPost/Variantafdeb5ee6377423dd013d21c06070cfeb3dec721bf992c52bc57c130e16b6102.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7533619ad4038185799e1e21fc5a58b29cf0103d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
