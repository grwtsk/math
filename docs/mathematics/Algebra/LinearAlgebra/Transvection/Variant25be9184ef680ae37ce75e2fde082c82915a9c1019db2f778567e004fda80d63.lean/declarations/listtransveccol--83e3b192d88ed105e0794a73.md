# listTransvecCol

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36252e37bac835e8d56f123584146bfb34cff138bade4320fea511b96a0a6c99",
  "kind": "def",
  "lexical_name": "listTransvecCol",
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
  "slug": "listtransveccol--83e3b192d88ed105e0794a73",
  "source": {
    "blob": "48ba5b08e9e15dd90af727b6de1736331664849a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 343,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83e3b192d88ed105e0794a731bc2768519a8a5ee3c5f1b4828f0c6cf2996403c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36252e37bac835e8d56f123584146bfb34cff138bade4320fea511b96a0a6c99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def listTransvecCol : List (Matrix (Sum (Fin r) Unit) (Sum (Fin r) Unit) 𝕜) :=
  List.ofFn fun i : Fin r =>
    transvection (inl i) (inr unit) <| -M (inl i) (inr unit) / M (inr unit) (inr unit)
#align matrix.pivot.list_transvec_col Matrix.Pivot.listTransvecCol

/-- A list of transvections such that multiplying on the right with these transvections will replace
the last row with zeroes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48ba5b08e9e15dd90af727b6de1736331664849a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
