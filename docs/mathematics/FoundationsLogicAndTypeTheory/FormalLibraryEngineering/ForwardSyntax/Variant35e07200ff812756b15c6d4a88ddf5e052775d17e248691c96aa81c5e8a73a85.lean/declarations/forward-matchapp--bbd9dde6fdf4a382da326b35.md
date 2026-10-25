# Forward.matchApp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d21ea926eed972d6c75b33011b3f086a464387c69153c78dc91f125f3efdec52",
  "kind": "def",
  "lexical_name": "Forward.matchApp?",
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
  "slug": "forward-matchapp--bbd9dde6fdf4a382da326b35",
  "source": {
    "blob": "9db3afe8a72bb0f938728dc9b517c9ede16662e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardSyntax/Variant35e07200ff812756b15c6d4a88ddf5e052775d17e248691c96aa81c5e8a73a85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbd9dde6fdf4a382da326b3573af420b0da0452e67665f7a7a356d2ea3df2d50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardSyntax/Variant35e07200ff812756b15c6d4a88ddf5e052775d17e248691c96aa81c5e8a73a85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d21ea926eed972d6c75b33011b3f086a464387c69153c78dc91f125f3efdec52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Forward.matchApp? (e : Term) : Option (Term × ForwardArg) := do
  let `($head $args*) := (⟨dropParens e.raw⟩ : Term) | none
  let last : Term := ⟨dropParens (← args.back?).raw⟩
  let arg : ForwardArg ←
    if last.raw.isOfKind ``doForward then
      some ⟨#[], ⟨last.raw[2]⟩⟩
    else if let `(fun $bs:funBinder* => $rest) := last then
      let rest := dropParens rest.raw
      if rest.isOfKind ``doForward then some ⟨bs, ⟨rest[2]⟩⟩ else none
    else none
  let preArgs := args.pop
  let head' : Term :=
    if preArgs.isEmpty then head
    else ⟨mkNode ``Lean.Parser.Term.app #[head, mkNullNode preArgs]⟩
  some (head', arg)

end Lean.Elab.Do
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardSyntax/Variant35e07200ff812756b15c6d4a88ddf5e052775d17e248691c96aa81c5e8a73a85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardSyntax/Variant35e07200ff812756b15c6d4a88ddf5e052775d17e248691c96aa81c5e8a73a85.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9db3afe8a72bb0f938728dc9b517c9ede16662e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
