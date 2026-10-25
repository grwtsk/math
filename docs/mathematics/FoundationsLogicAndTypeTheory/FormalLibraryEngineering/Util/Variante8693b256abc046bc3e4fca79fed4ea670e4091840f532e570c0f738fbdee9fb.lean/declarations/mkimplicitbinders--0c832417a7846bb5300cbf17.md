# mkImplicitBinders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8721b0582add6492f31646a733de632727daa89d3f398978ddf5eb5a09b05c4a",
  "kind": "def",
  "lexical_name": "mkImplicitBinders",
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
  "slug": "mkimplicitbinders--0c832417a7846bb5300cbf17",
  "source": {
    "blob": "0d473c2dede859f70bf6e66ec74dae47c53238c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante8693b256abc046bc3e4fca79fed4ea670e4091840f532e570c0f738fbdee9fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c832417a7846bb5300cbf17926c6a3bddbf0d2ee88b6c69ff13f2b34f7f3548",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante8693b256abc046bc3e4fca79fed4ea670e4091840f532e570c0f738fbdee9fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8721b0582add6492f31646a733de632727daa89d3f398978ddf5eb5a09b05c4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkImplicitBinders (argNames : Array Name) : TermElabM (Array (TSyntax ``Parser.Term.implicitBinder)) :=
  argNames.mapM fun argName =>
    `(implicitBinderF| { $(mkIdent argName) })

/-- Return instance binder syntaxes binding `className α` for every generic parameter `α`
of the inductive `indVal` for which such a binding is type-correct. `argNames` is expected
to provide names for the parameters (see `mkInductArgNames`). The output matches `instBinder*`.

For example, given `inductive Foo {α : Type} (n : Nat) : (β : Type) → Type`, where `β` is an index,
invoking ``mkInstImplicitBinders `BarClass foo #[`α, `n, `β]`` gives `` `([BarClass α])``. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante8693b256abc046bc3e4fca79fed4ea670e4091840f532e570c0f738fbdee9fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante8693b256abc046bc3e4fca79fed4ea670e4091840f532e570c0f738fbdee9fb.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d473c2dede859f70bf6e66ec74dae47c53238c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
