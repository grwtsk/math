# getTailPos?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26cddfe49f1fa1f848b95cb77e630929049f5d841f2ba9454170b6f4e11d4fb3",
  "kind": "def",
  "lexical_name": "getTailPos?",
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
  "slug": "gettailpos--cf6cf15afdfe1f074bbc02c2",
  "source": {
    "blob": "a48bfcd7f182375f04a8fe3f19bf3e8424b106cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5336,
    "line": 5307,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf6cf15afdfe1f074bbc02c2eaadffa138f9780b9aa1ba486c4d4ed909992c08",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26cddfe49f1fa1f848b95cb77e630929049f5d841f2ba9454170b6f4e11d4fb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5307–5336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getTailPos? (stx : Syntax) (canonicalOnly := false) : Option String.Pos.Raw :=
  match stx, canonicalOnly with
  | atom (SourceInfo.original (endPos := pos) ..) .., _
  | atom (SourceInfo.synthetic (endPos := pos) (canonical := true) ..) _, _
  | atom (SourceInfo.synthetic (endPos := pos) ..) _,  false
  | ident (SourceInfo.original (endPos := pos) ..) .., _
  | ident (SourceInfo.synthetic (endPos := pos) (canonical := true) ..) .., _
  | ident (SourceInfo.synthetic (endPos := pos) ..) .., false
  | node (SourceInfo.original (endPos := pos) ..) .., _
  | node (SourceInfo.synthetic (endPos := pos) (canonical := true) ..) .., _
  | node (SourceInfo.synthetic (endPos := pos) ..) .., false => some pos
  | node _ _ args, _ =>
    let rec loop (i : Nat) : Option String.Pos.Raw :=
      match decide (LT.lt i args.size) with
      | true => match getTailPos? (args.get!Internal ((args.size.sub i).sub 1)) canonicalOnly with
         | some info => some info
         | none      => loop (hAdd i 1)
      | false => none
    loop 0
  | _, _ => none

/--
An array of syntax elements interspersed with the given separators.

Separator arrays result from repetition operators such as `,*`.
[Coercions](lean-manual://section/coercions) to and from `Array Syntax` insert or remove separators
as required.

The typed equivalent is `Lean.Syntax.TSepArray`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean#L5307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a48bfcd7f182375f04a8fe3f19bf3e8424b106cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
