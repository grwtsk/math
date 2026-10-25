# MonadAttach.trivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:398ee94a23f1d6684a21b3126f1a894e655433c1a04e834b2a0f33fe4c3cb95e",
  "kind": "def",
  "lexical_name": "MonadAttach.trivial",
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
  "slug": "monadattach-trivial--0bc715ae7d5f74c76d4eff2f",
  "source": {
    "blob": "209cdd6571f6d67e75ce24f9c5e0f1cdd341b608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant4993ab8a47c4bcdb7fb771757683691d06c60449458a6912b15cff552af9e730.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bc715ae7d5f74c76d4eff2fb5b71ee5ad9e15dd66c1fa79a1bc2e8c96621b65",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant4993ab8a47c4bcdb7fb771757683691d06c60449458a6912b15cff552af9e730.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:398ee94a23f1d6684a21b3126f1a894e655433c1a04e834b2a0f33fe4c3cb95e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public protected def MonadAttach.trivial {m : Type u → Type v} [Monad m] : MonadAttach m where
  CanReturn _ _ := True
  attach x := (⟨·, .intro⟩) <$> x

section

variable (α : Type u) [∀ m, Monad m] [∀ m, MonadAttach m]

set_option doc.verso true

/--
For every {given}`x : m α`, this type class provides a predicate {lean}`MonadAttach.CanReturn x`
and a way to attach a proof of this predicate to the return values of {name}`x` by providing
an element {lean}`MonadAttach.attach x` of {lean}`m { a : α // MonadAttach.CanReturn x a }`.

Instances should abide the law {lean}`Subtype.val <$> MonadAttach.attach x = x`, which is encoded by
the {name}`WeaklyLawfulMonadAttach` type class. The stronger type class {name}`LawfulMonadAttach`
ensures that {lean}`MonadAttach.CanReturn x` is the _unique_ strongest possible predicate.

Similarly to {name (scope := "Init.Data.List.Attach")}`List.attach`, the purpose of
{name}`MonadAttach` is to attach proof terms necessary for well-founded termination proofs.
The iterator library relies on {name}`MonadAttach` for combinators such as
{name (scope := "Init.Data.Iterators")}`Std.Iter.filterM` in order to automatically attach
information about the monadic predicate's behavior that could be relevant for the termination
behavior of the iterator.

*Limitations*:

For many monads, there is a strongly lawful {lean}`MonadAttach` instance, but there are exceptions.
For example, there is no way to provide a computable {lean}`MonadAttach` instance for the CPS monad
transformers
{name (scope := "Init.Control.StateCps")}`StateCpsT` and
{name (scope := "Init.Control.StateCps")}`ExceptCpsT` with a predicate that is not always
{name}`True`. Therefore, such CPS monads only provide the trivial {lean}`MonadAttach` instance
{lean}`MonadAttach.trivial` together with {name}`WeaklyLawfulMonadAttach`, but without
{name}`LawfulMonadAttach`.

For most monads with side effects, {lean}`MonadAttach` is too weak to fully capture the behavior of
computations because the postcondition represented by {name}`MonadAttach.CanReturn` neither depends
on the prior internal state of the monad, nor does it contain information about how the state of the
monad changes with the computation.
-/
add_decl_doc MonadAttach

/--
This type class ensures that every monadic action {given}`x : m α` can be recovered by stripping the
proof component from the subtypes returned by
{lean}`(MonadAttach.attach x) : m { a : α // MonadAttach.CanReturn x a }` . In other words,
the type class ensures that {lean}`Subtype.val <$> MonadAttach.attach x = x`.
-/
add_decl_doc WeaklyLawfulMonadAttach

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant4993ab8a47c4bcdb7fb771757683691d06c60449458a6912b15cff552af9e730.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant4993ab8a47c4bcdb7fb771757683691d06c60449458a6912b15cff552af9e730.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `209cdd6571f6d67e75ce24f9c5e0f1cdd341b608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
