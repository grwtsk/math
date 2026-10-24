# integratePartitionDyadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:497cefa4f808670b8770801749510410fd8b7b678e76b3321f3e6f28484ec85b",
  "kind": "def",
  "lexical_name": "integratePartitionDyadic",
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
  "slug": "integratepartitiondyadic--891f4d3bf5c33c1dd92492c1",
  "source": {
    "blob": "503299e995e73d1768f22a63316db017b5f817b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 118,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:891f4d3bf5c33c1dd92492c1e3fe303bac2bb82181f49a4b5b4b2a34275f9849",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:497cefa4f808670b8770801749510410fd8b7b678e76b3321f3e6f28484ec85b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def integratePartitionDyadic (e : Expr) (I : IntervalRat) (n : ℕ) (hn : 0 < n)
    (cfg : DyadicConfig := {}) : IntervalRat :=
  let parts := uniformPartition I n hn
  let bounds := collectBoundsDyadic e parts cfg
  bounds.foldl IntervalRat.add (IntervalRat.singleton 0)

/-! ### Domain validity -/

/-- Domain validity for all subintervals in a partition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `503299e995e73d1768f22a63316db017b5f817b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
