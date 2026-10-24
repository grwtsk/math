# SourceInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e68ec771c0f5543d1cd2e94beea9309b92931c001a168776e18a8d2b88974464",
  "kind": "inductive",
  "lexical_name": "SourceInfo",
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
  "slug": "sourceinfo--768c528cde67868a8bef3e56",
  "source": {
    "blob": "a48bfcd7f182375f04a8fe3f19bf3e8424b106cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4902,
    "line": 4867,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:768c528cde67868a8bef3e568f5389fd77ab513cc591696d6ce8d7576937b15e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e68ec771c0f5543d1cd2e94beea9309b92931c001a168776e18a8d2b88974464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4867–4902.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
inductive SourceInfo where
  /--
  A token produced by the parser from original input that includes both leading and trailing
  whitespace as well as position information.

  The `leading` whitespace is inferred after parsing by `Syntax.updateLeading`. This is because the
  “preceding token” is not well-defined during parsing, especially in the presence of backtracking.
  -/
  | original (leading : Substring.Raw) (pos : String.Pos.Raw) (trailing : Substring.Raw) (endPos : String.Pos.Raw)
  /--
  Synthetic syntax is syntax that was produced by a metaprogram or by Lean itself (e.g. by a
  quotation). Synthetic syntax is annotated with a source span from the original syntax, which
  relates it to the source file.

  The delaborator uses this constructor to store an encoded indicator of which core language
  expression gave rise to the syntax.

  The `canonical` flag on synthetic syntax is enabled for syntax that is not literally part of the
  original input syntax but should be treated “as if” the user really wrote it for the purpose of
  hovers and error messages. This is usually used on identifiers in order to connect the binding
  site to the user's original syntax even if the name of the identifier changes during expansion, as
  well as on tokens that should receive targeted messages.

  Generally speaking, a macro expansion should only use a given piece of input syntax in a single
  canonical token. An exception to this rule is when the same identifier is used to declare two
  binders, as in the macro expansion for dependent if:
  ```
  `(if $h : $cond then $t else $e) ~>
  `(dite $cond (fun $h => $t) (fun $h => $t))
  ```
  In these cases, if the user hovers over `h` they will see information about both binding sites.
  -/
  | synthetic (pos : String.Pos.Raw) (endPos : String.Pos.Raw) (canonical := false)
  /-- A synthesized token without position information. -/
  | protected none

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean#L4867).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a48bfcd7f182375f04a8fe3f19bf3e8424b106cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
