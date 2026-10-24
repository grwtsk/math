# FlowDefectBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79c8f699ab5e20e1367b7d2f5b13f0fc4b3790dbfdf8c0fc37ab0c53fa03f01c",
  "kind": "def",
  "lexical_name": "FlowDefectBudget",
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
  "slug": "flowdefectbudget--be23b4d367ba0e0871ab09d3",
  "source": {
    "blob": "b1ce0e56662f34347586ba7f01c40a6342a58cee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 229,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be23b4d367ba0e0871ab09d3e0d7f2807f852bbaecc81a95e39c4f65dc35135b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79c8f699ab5e20e1367b7d2f5b13f0fc4b3790dbfdf8c0fc37ab0c53fa03f01c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FlowDefectBudget
    (flow : CorrelationCompatibleFlow (Left := Left) (Right := Right))
    (budget : ℝ) : Prop :=
  0 ≤ budget ∧ ∀ t x, 0 ≤ t → t ≤ flow.finalTime →
    ‖inner ℂ (flow.leftEvolution t)
      (flow.defect t x (flow.rightEvolution t))‖ ≤ budget

end

end Surface.Core.TypeII
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1ce0e56662f34347586ba7f01c40a6342a58cee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
