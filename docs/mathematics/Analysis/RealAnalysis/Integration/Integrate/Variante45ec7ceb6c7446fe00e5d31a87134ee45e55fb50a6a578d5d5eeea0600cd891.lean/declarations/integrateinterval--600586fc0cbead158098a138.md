# integrateInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:335c29b4ac2331e5e63aa51a25ea7b974a135176c6b9954e35867783f50fdca0",
  "kind": "def",
  "lexical_name": "integrateInterval",
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
  "slug": "integrateinterval--600586fc0cbead158098a138",
  "source": {
    "blob": "d3d8275605f9330d9f6c605d3575ae249178b6eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:600586fc0cbead158098a13862a5aec2198e96b3cbdf1017ff517ceef65a09b5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:335c29b4ac2331e5e63aa51a25ea7b974a135176c6b9954e35867783f50fdca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def integrateInterval (e : Expr) (I : IntervalRat) (n : ℕ) (hn : 0 < n) : IntervalRat :=
  sumIntervalBounds e (uniformPartition I n hn)

/-! ### Integration correctness for n = 1 -/

/-- For single-interval integration (n=1), we can compute the result directly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3d8275605f9330d9f6c605d3575ae249178b6eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
