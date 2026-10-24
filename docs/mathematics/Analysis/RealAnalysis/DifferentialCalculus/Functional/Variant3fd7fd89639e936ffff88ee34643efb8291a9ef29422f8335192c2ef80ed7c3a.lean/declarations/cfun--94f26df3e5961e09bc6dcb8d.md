# cFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be7a4e68100e55f515afc99e380c594fba94f5bd58ec452956341fc38d5ce794",
  "kind": "def",
  "lexical_name": "cFun",
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
  "slug": "cfun--94f26df3e5961e09bc6dcb8d",
  "source": {
    "blob": "41cc13afae8e4e068f991ab1a0d14908c398e1e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant3fd7fd89639e936ffff88ee34643efb8291a9ef29422f8335192c2ef80ed7c3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94f26df3e5961e09bc6dcb8d68aa5d903c777a6959820252f6eae1c3e618224e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant3fd7fd89639e936ffff88ee34643efb8291a9ef29422f8335192c2ef80ed7c3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be7a4e68100e55f515afc99e380c594fba94f5bd58ec452956341fc38d5ce794`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cFun (lam : ℝ) (v : ℝ → ℝ) : ℝ :=
  lam * (∫ s in (-(1:ℝ)/2)..(1/2), v s) ^ 2 /
    ((∫ s in (-(1:ℝ)/2)..(1/2), v s ^ 2)
      + lam ^ 2 * ∫ s in (-(1:ℝ)/2)..(1/2), (∫ s' in (-(1:ℝ)/2)..(1/2), |s - s'| * v s * v s'))

/-- The three moments of v*_λ [eq:abJ] in scale-free form:
a* = ∫v*, b* = ∫v*², J* = ∬|s−s'|v*v*. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant3fd7fd89639e936ffff88ee34643efb8291a9ef29422f8335192c2ef80ed7c3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant3fd7fd89639e936ffff88ee34643efb8291a9ef29422f8335192c2ef80ed7c3a.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41cc13afae8e4e068f991ab1a0d14908c398e1e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
