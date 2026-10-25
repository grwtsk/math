# mkAuxName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:571d7f60ad5e002748ad1d5c57b92d8de328528a64b1d19477b10bf699c68787",
  "kind": "def",
  "lexical_name": "mkAuxName",
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
  "slug": "mkauxname--8a0a153e714da753795a3ffa",
  "source": {
    "blob": "0aa5676e3fd82590965dc25cf34f3e8ffa8cf935",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermUnsafe/Variant7c6c85f4c38735c53e7be2b74ba446b02fa39f3db6793413df9205479212a7a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a0a153e714da753795a3ffaefcf9d231e7292ddabeb8e69c3f9312de56c6357",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermUnsafe/Variant7c6c85f4c38735c53e7be2b74ba446b02fa39f3db6793413df9205479212a7a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:571d7f60ad5e002748ad1d5c57b92d8de328528a64b1d19477b10bf699c68787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def mkAuxName (hint : Name) : TermElabM Name :=
  withFreshMacroScope do
    let name := (← getDeclName?).getD Name.anonymous ++ hint
    pure $ addMacroScope (← getMainModule) name (← getCurrMacroScope)

/--
`unsafe t : α` is an expression constructor which allows using unsafe declarations inside the
body of `t : α`, by creating an auxiliary definition containing `t` and using `implementedBy` to
wrap it in a safe interface. It is required that `α` is nonempty for this to be sound,
but even beyond that, an `unsafe` block should be carefully inspected for memory safety because
the compiler is unable to guarantee the safety of the operation.

For example, the `evalExpr` function is unsafe, because the compiler cannot guarantee that when
you call ```evalExpr Foo ``Foo e``` that the type `Foo` corresponds to the name `Foo`, but in a
particular use case, we can ensure this, so `unsafe (evalExpr Foo ``Foo e)` is a correct usage.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermUnsafe/Variant7c6c85f4c38735c53e7be2b74ba446b02fa39f3db6793413df9205479212a7a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermUnsafe/Variant7c6c85f4c38735c53e7be2b74ba446b02fa39f3db6793413df9205479212a7a5.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aa5676e3fd82590965dc25cf34f3e8ffa8cf935` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
