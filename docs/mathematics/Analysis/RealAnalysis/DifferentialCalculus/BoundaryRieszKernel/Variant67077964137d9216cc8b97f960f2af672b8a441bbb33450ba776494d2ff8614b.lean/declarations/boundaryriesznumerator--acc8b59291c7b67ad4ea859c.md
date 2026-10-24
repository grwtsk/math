# boundaryRieszNumerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38aae21c5322e95d8bf1b04f65949dfda92f01823b76388af9f2a343592d68ed",
  "kind": "def",
  "lexical_name": "boundaryRieszNumerator",
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
  "slug": "boundaryriesznumerator--acc8b59291c7b67ad4ea859c",
  "source": {
    "blob": "6ce2594688d30ff7d666c2de4b68b34cb8fdac39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acc8b59291c7b67ad4ea859c1dc6bb9b4aab25f34ad4779c9c52dcb6ee68e3cb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38aae21c5322e95d8bf1b04f65949dfda92f01823b76388af9f2a343592d68ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundaryRieszNumerator (A : ℝ) (s : ℂ) : ℂ :=
  ((s ^ 2 - 1 / 4) ^ 2 / (sourceNormalization A : ℂ)) *
    ∑ j ∈ Finset.range 9,
      (rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) / (A : ℂ) ^ j * s ^ (8 - j)

/-- The exact pole-clearing identity holds away from the rational singularity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ce2594688d30ff7d666c2de4b68b34cb8fdac39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
