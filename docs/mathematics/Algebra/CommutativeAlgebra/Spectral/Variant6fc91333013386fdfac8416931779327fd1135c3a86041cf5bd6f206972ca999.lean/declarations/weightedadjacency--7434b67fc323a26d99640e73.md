# WeightedAdjacency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72f5c0afe1f060b4fcd65c1e17e82d9dc3ccb8c467b6cf941e54798728652cf5",
  "kind": "abbrev",
  "lexical_name": "WeightedAdjacency",
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
  "slug": "weightedadjacency--7434b67fc323a26d99640e73",
  "source": {
    "blob": "7198cfb632abd28efe5e10f62289b604bbca3800",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5,
    "line": 5,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Spectral/Variant6fc91333013386fdfac8416931779327fd1135c3a86041cf5bd6f206972ca999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7434b67fc323a26d99640e73d2807a24cde5c0f8f70a159f00ba85942c047911",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Spectral/Variant6fc91333013386fdfac8416931779327fd1135c3a86041cf5bd6f206972ca999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72f5c0afe1f060b4fcd65c1e17e82d9dc3ccb8c467b6cf941e54798728652cf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5–5.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev WeightedAdjacency (m : Nat) := Matrix (Fin m) (Fin m) Rat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Spectral/Variant6fc91333013386fdfac8416931779327fd1135c3a86041cf5bd6f206972ca999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Spectral/Variant6fc91333013386fdfac8416931779327fd1135c3a86041cf5bd6f206972ca999.lean#L5).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7198cfb632abd28efe5e10f62289b604bbca3800` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
