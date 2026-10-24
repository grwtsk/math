# zipWithLeftTR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29515fd736d5bc8dd698c86cb350c444851cb27652072bbe44856ee2a415be25",
  "kind": "def",
  "lexical_name": "zipWithLeftTR",
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
  "slug": "zipwithlefttr--a3422cad7e76718f537803ec",
  "source": {
    "blob": "259c26784826ee775872f1aeb666dee30565a411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1402,
    "line": 1395,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6ab11c07f15eb1f95f83b5d8a3e9dbd94f7c625ab9f8060894b401333aaddd02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3422cad7e76718f537803ec19cf26037cb4c365f5b1d8c9184ae2f2a4e9c107",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6ab11c07f15eb1f95f83b5d8a3e9dbd94f7c625ab9f8060894b401333aaddd02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29515fd736d5bc8dd698c86cb350c444851cb27652072bbe44856ee2a415be25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1395–1402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def zipWithLeftTR (f : α → Option β → γ)
    (as : List α) (bs : List β) : List γ := go as bs #[] where
  /-- Auxiliary for `zipWithLeftTR`: `zipWithLeftTR.go l acc = acc.toList ++ zipWithLeft l`. -/
  go : List α → List β → Array γ → List γ
  | [], _, acc => acc.toList
  | as, [], acc => as.foldl (fun acc a => acc.push (f a none)) acc |>.toList
  | a :: as, b :: bs, acc => go as bs (acc.push (f a (some b)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6ab11c07f15eb1f95f83b5d8a3e9dbd94f7c625ab9f8060894b401333aaddd02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6ab11c07f15eb1f95f83b5d8a3e9dbd94f7c625ab9f8060894b401333aaddd02.lean#L1395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `259c26784826ee775872f1aeb666dee30565a411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
