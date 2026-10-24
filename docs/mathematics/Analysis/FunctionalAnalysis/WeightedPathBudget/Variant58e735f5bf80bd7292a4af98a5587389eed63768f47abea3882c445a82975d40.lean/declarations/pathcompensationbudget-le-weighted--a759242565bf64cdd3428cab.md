# pathCompensationBudget_le_weighted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e09e8ab6-c5c3-e764-13f1-5eb8a6dbea62",
  "kind": "theorem",
  "lexical_name": "pathCompensationBudget_le_weighted",
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
  "slug": "pathcompensationbudget-le-weighted--a759242565bf64cdd3428cab",
  "source": {
    "blob": "b240cb7f3e016c4ec1414587b69e267c8d03c418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 71,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/WeightedPathBudget/Variant58e735f5bf80bd7292a4af98a5587389eed63768f47abea3882c445a82975d40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a759242565bf64cdd3428caba75177b968b847bdee50d8477a24f10db00d5138",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/WeightedPathBudget/Variant58e735f5bf80bd7292a4af98a5587389eed63768f47abea3882c445a82975d40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e09e8ab6-c5c3-e764-13f1-5eb8a6dbea62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pathCompensationBudget_le_weighted
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (certificate :
      TraceCompensationBudget system)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test)
    (safe :
      path.AllArcs
        (fun arc =>
          cut.safeArc arc = true)) :
    pathCompensationBudget
        certificate path test ≤
      weightedCompensationBudget
          certificate path *
        system.packet.packetNormSq source test := by
  induction path with
  | nil =>
      simp [pathCompensationBudget,
        weightedCompensationBudget]
  | cons arc rest induction =>
      rcases safe with ⟨arcSafe, restSafe⟩
      have downstream :=
        induction restSafe
      have localNorm :=
        system.packetNormTransport
          arc test arcSafe
      have weightedNonnegative :=
        weightedCompensationBudget_nonnegative
          certificate rest
      calc
        pathCompensationBudget certificate
            (.cons arc rest) test =
          certificate.budget arc *
              system.packet.packetNormSq
                arc.tail test +
            pathCompensationBudget
              certificate rest test := by
          rfl
        _ ≤
          certificate.budget arc *
              system.packet.packetNormSq
                arc.tail test +
            weightedCompensationBudget
                certificate rest *
              system.packet.packetNormSq
                arc.head test :=
          add_le_add le_rfl downstream
        _ ≤
          certificate.budget arc *
              system.packet.packetNormSq
                arc.tail test +
            weightedCompensationBudget
                certificate rest *
              (‖system.transport arc‖ ^ 2 *
                system.packet.packetNormSq
                  arc.tail test) :=
          add_le_add le_rfl
            (mul_le_mul_of_nonneg_left
              localNorm weightedNonnegative)
        _ =
          weightedCompensationBudget
              certificate (.cons arc rest) *
            system.packet.packetNormSq
              arc.tail test := by
          simp [weightedCompensationBudget]
          ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/WeightedPathBudget/Variant58e735f5bf80bd7292a4af98a5587389eed63768f47abea3882c445a82975d40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/WeightedPathBudget/Variant58e735f5bf80bd7292a4af98a5587389eed63768f47abea3882c445a82975d40.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b240cb7f3e016c4ec1414587b69e267c8d03c418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
