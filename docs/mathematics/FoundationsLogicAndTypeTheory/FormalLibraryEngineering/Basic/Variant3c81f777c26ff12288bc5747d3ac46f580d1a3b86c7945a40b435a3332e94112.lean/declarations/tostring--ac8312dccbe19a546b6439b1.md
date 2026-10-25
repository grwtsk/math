# toString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf3505b9b74ec71937cf703a330a70352641ec88b0889dd94d7dc5d350bbb525",
  "kind": "def",
  "lexical_name": "toString",
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
  "slug": "tostring--ac8312dccbe19a546b6439b1",
  "source": {
    "blob": "5e663fea736a59d0a61b9fa00c040eea6e4e0202",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 390,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3c81f777c26ff12288bc5747d3ac46f580d1a3b86c7945a40b435a3332e94112.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac8312dccbe19a546b6439b14b9de8c0a013a8e873fc73b57022e12fd343e15b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3c81f777c26ff12288bc5747d3ac46f580d1a3b86c7945a40b435a3332e94112.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf3505b9b74ec71937cf703a330a70352641ec88b0889dd94d7dc5d350bbb525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toString : BVExpr w → String
  | .var idx => s!"var{idx}"
  | .const val => ToString.toString val
  | .extract start len expr => s!"{expr.toString}[{start}, {len}]"
  | .bin lhs op rhs => s!"({lhs.toString} {op.toString} {rhs.toString})"
  | .un op operand => s!"({op.toString} {toString operand})"
  | .append lhs rhs _ => s!"({toString lhs} ++ {toString rhs})"
  | .replicate n expr _ => s!"(replicate {n} {toString expr})"
  | .shiftLeft lhs rhs => s!"({lhs.toString} << {rhs.toString})"
  | .shiftRight lhs rhs => s!"({lhs.toString} >> {rhs.toString})"
  | .arithShiftRight lhs rhs => s!"({lhs.toString} >>a {rhs.toString})"


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3c81f777c26ff12288bc5747d3ac46f580d1a3b86c7945a40b435a3332e94112.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3c81f777c26ff12288bc5747d3ac46f580d1a3b86c7945a40b435a3332e94112.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e663fea736a59d0a61b9fa00c040eea6e4e0202` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
