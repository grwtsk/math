# closedPrimeMomentFixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98b133649ad3a2d9b70fbf1346fe039d10a2b3bcb500e6679c6d55435b134dd0",
  "kind": "def",
  "lexical_name": "closedPrimeMomentFixed",
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
  "slug": "closedprimemomentfixed--168fd7ce64ff60f7350c5a7d",
  "source": {
    "blob": "53fd0c9a7705700988494410c2be136e2035ceb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 127,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourcePrimeMomentScale/Variantb9627a3142a62c421e0e851a397bc49cbe49974263ac88c070925bd054cc80a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:168fd7ce64ff60f7350c5a7d04b129941de635b1245321d1cac7410e8b30ce56",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourcePrimeMomentScale/Variantb9627a3142a62c421e0e851a397bc49cbe49974263ac88c070925bd054cc80a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98b133649ad3a2d9b70fbf1346fe039d10a2b3bcb500e6679c6d55435b134dd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def closedPrimeMomentFixed (N : ℕ) (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 N, vonMangoldt n * closedPrimeWeight A n

/-- One fixed complete prime-filtered closed inventory with the unchanged source weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourcePrimeMomentScale/Variantb9627a3142a62c421e0e851a397bc49cbe49974263ac88c070925bd054cc80a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourcePrimeMomentScale/Variantb9627a3142a62c421e0e851a397bc49cbe49974263ac88c070925bd054cc80a3.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53fd0c9a7705700988494410c2be136e2035ceb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
