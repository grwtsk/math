# fastSubsingletonElim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f610bf76aa4acfa70bc3fa7e93ef7c3fcff5748277bf66926e3e442dde511770",
  "kind": "def",
  "lexical_name": "fastSubsingletonElim",
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
  "slug": "fastsubsingletonelim--f22f4b0690de29a3af04dff0",
  "source": {
    "blob": "f40e4046dbd24cea511bafedd41701959ec9cce6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant97e8c78a486bfd03d86903b32d64e499e51b5405db17d7f698c87be8b7a8955f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f22f4b0690de29a3af04dff0c8e70308df026e60a52a1073950f418e323838be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant97e8c78a486bfd03d86903b32d64e499e51b5405db17d7f698c87be8b7a8955f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f610bf76aa4acfa70bc3fa7e93ef7c3fcff5748277bf66926e3e442dde511770`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fastSubsingletonElim (mvarId : MVarId) : MetaM Bool :=
  mvarId.withContext do
    let res ← observing? do
      mvarId.checkNotAssigned `fastSubsingletonElim
      let tgt ← withReducible mvarId.getType'
      let some (_, lhs, rhs) := tgt.eq? | failure
      -- Note: `mkAppM` uses `withNewMCtxDepth`, which prevents `Sort _` from specializing to `Prop`
      let pf ← withSubsingletonAsFast fun elim =>
        elim <$> mkAppM ``FastSubsingleton.elim #[lhs, rhs]
      mvarId.assign pf
      return true
    return res.getD false

/--
`mkRichHCongr fType funInfo fixedFun fixedParams forceHEq`
create a congruence lemma to prove that `Eq/HEq (f a₁ ... aₙ) (f' a₁' ... aₙ')`.
The functions have type `fType` and the number of arguments is governed by the `funInfo` data.
Each argument produces an `Eq/HEq aᵢ aᵢ'` hypothesis, but we also provide these hypotheses
the additional facts that the preceding equalities have been proved (unlike in `mkHCongrWithArity`).
The first two arguments of the resulting theorem are for `f` and `f'`, followed by a proof
of `f = f'`, unless `fixedFun` is `true` (see below).

When including hypotheses about previous hypotheses, we make use of dependency information
and only include relevant equalities.

The argument `fty` denotes the type of `f`. The arity of the resulting congruence lemma is
controlled by the size of the `info` array.

For the purpose of generating nicer lemmas (to help `to_additive` for example),
this function supports generating lemmas where certain parameters
are meant to be fixed:

* If `fixedFun` is `false` (the default) then the lemma starts with three arguments for `f`, `f'`,
  and `h : f = f'`. Otherwise, if `fixedFun` is `true` then the lemma starts with just `f`.

* If the `fixedParams` argument has `true` for a particular argument index, then this is a hint
  that the congruence lemma may use the same parameter for both sides of the equality. There is
  no guarantee -- it respects it if the types are equal for that parameter (i.e., if the parameter
  does not depend on non-fixed parameters).

If `forceHEq` is `true` then the conclusion of the generated theorem is a `HEq`.
Otherwise it might be an `Eq` if the equality is homogeneous.

This is the interpretation of the `CongrArgKind`s in the generated congruence theorem:
* `.eq` corresponds to having three arguments `(x : α) (x' : α) (h : x = x')`.
  Note that `h` might have additional hypotheses.
* `.heq` corresponds to having three arguments `(x : α) (x' : α') (h : x ≍ x')`
  Note that `h` might have additional hypotheses.
* `.fixed` corresponds to having a single argument `(x : α)` that is fixed between the LHS and RHS
* `.subsingletonInst` corresponds to having two arguments `(x : α) (x' : α')` for which the
  congruence generator was able to prove that `x ≍ x'` already. This is a slight abuse of
  this `CongrArgKind` since this is used even for types that are not subsingleton typeclasses.

Note that the first entry in this array is for the function itself.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant97e8c78a486bfd03d86903b32d64e499e51b5405db17d7f698c87be8b7a8955f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant97e8c78a486bfd03d86903b32d64e499e51b5405db17d7f698c87be8b7a8955f.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f40e4046dbd24cea511bafedd41701959ec9cce6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
