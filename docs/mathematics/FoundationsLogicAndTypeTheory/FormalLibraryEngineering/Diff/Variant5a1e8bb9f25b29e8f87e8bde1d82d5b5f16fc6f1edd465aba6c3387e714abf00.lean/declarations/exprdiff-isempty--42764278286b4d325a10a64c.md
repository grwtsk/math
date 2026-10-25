# ExprDiff.isEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f3dc30057856c0ef25d7eff92ae2b6b2f6275a66714b9f6d7dcb7283709a3cf",
  "kind": "def",
  "lexical_name": "ExprDiff.isEmpty",
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
  "slug": "exprdiff-isempty--42764278286b4d325a10a64c",
  "source": {
    "blob": "77d4c076f068b4b9892a95cd0698c4fafc59edc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42764278286b4d325a10a64c31deb9dfef47502a3e5efc8cb057b55a178bcc61",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f3dc30057856c0ef25d7eff92ae2b6b2f6275a66714b9f6d7dcb7283709a3cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExprDiff.isEmpty (d : ExprDiff) : Bool :=
  d.changesAfter.isEmpty ∧ d.changesBefore.isEmpty

/-- Computes a diff between `before` and `after` expressions.

This works by recursively comparing function arguments.

TODO(ed): experiment with a 'greatest common subexpression' design where
  given `e₀`, `e₁`, find the greatest common subexpressions `Xs : Array Expr` and a congruence `F` such that
  `e₀ = F[A₀[..Xs]]` and `e₀ = F[A₁[..Xs]]`. Then, we can have fancy diff highlighting where common subexpressions are not highlighted.

## Diffing binders

Two binding domains are identified if they have the same user name and the same type.
The most common tactic that modifies binders is after an `intros`.
To deal with this case, if `before = (a : α) → β` and `after`, is not a matching binder (ie: not `(a : α) → _`)
then we instantiate the `before` variable in a new context and continue diffing `β` against `after`.

 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77d4c076f068b4b9892a95cd0698c4fafc59edc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
