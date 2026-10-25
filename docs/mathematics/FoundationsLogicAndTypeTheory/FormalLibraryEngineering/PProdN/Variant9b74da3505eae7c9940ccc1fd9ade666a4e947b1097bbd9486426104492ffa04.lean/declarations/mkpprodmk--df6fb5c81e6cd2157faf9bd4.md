# mkPProdMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0abdb900b004510aecadd5d2f41afdcacc7564a7efa55521c8e4f9623d9ca5b5",
  "kind": "def",
  "lexical_name": "mkPProdMk",
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
  "slug": "mkpprodmk--df6fb5c81e6cd2157faf9bd4",
  "source": {
    "blob": "6fabbe560294a078a94d86fbb7d07f37f080aab9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df6fb5c81e6cd2157faf9bd4e7313575e7f6011e37d16376cbf986e97c1b964e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0abdb900b004510aecadd5d2f41afdcacc7564a7efa55521c8e4f9623d9ca5b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkPProdMk (e1 e2 : Expr) : MetaM Expr := do
  let t1 ← inferType e1
  let t2 ← inferType e2
  let lvl1 ← getLevel t1
  let lvl2 ← getLevel t2
  if lvl1.isAlwaysZero && lvl2.isAlwaysZero then
    return mkApp4 (.const ``And.intro []) t1 t2 e1 e2
  else
    return mkApp4 (.const ``PProd.mk [lvl1, lvl2]) t1 t2 e1 e2

/-- `PProd.fst` or `And.left` (using `.proj`) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fabbe560294a078a94d86fbb7d07f37f080aab9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
