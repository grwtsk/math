# pathCompensationBudget_le_weighted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9899b8af7b1702fa707b9b484f6b6739a934225",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98089e597397b4a16dd187835d9be0472978eb3fc1ce6bf78caaaafd9fd15725.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa135f74-47a2-2e1e-d1ba-d44474c719f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8307f12-cb1c-2d1b-0286-5cd5e73d507c",
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
  "slug": "pathcompensationbudget-le-weighted--6de24f81ccca0d1148654ed6",
  "source": {
    "blob": "c9899b8af7b1702fa707b9b484f6b6739a934225",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 63,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/WeightedPathBudget/Variant98089e597397b4a16dd187835d9be0472978eb3fc1ce6bf78caaaafd9fd15725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6de24f81ccca0d1148654ed6c16fa503c41d761448d5ba7f49d027428512c8a0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/WeightedPathBudget/Variant98089e597397b4a16dd187835d9be0472978eb3fc1ce6bf78caaaafd9fd15725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8307f12-cb1c-2d1b-0286-5cd5e73d507c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–139.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/WeightedPathBudget/Variant98089e597397b4a16dd187835d9be0472978eb3fc1ce6bf78caaaafd9fd15725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/WeightedPathBudget/Variant98089e597397b4a16dd187835d9be0472978eb3fc1ce6bf78caaaafd9fd15725.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9899b8af7b1702fa707b9b484f6b6739a934225` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
