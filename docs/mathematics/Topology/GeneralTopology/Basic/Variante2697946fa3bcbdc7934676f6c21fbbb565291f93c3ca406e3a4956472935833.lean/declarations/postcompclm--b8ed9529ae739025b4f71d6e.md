# postcompCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66c3dfeef608a43f1b6e1e6baf5f29e954b430d815e1c1366ceed78df61b29a9",
  "kind": "def",
  "lexical_name": "postcompCLM",
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
  "slug": "postcompclm--b8ed9529ae739025b4f71d6e",
  "source": {
    "blob": "5b4a9c9cc147973695cfef46415308ed215424ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1052,
    "line": 1033,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8ed9529ae739025b4f71d6ec31c0cfeb55f6e39619c093f33c848bf9ee7daf3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66c3dfeef608a43f1b6e1e6baf5f29e954b430d815e1c1366ceed78df61b29a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1033–1052.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def postcompCLM (L : F →L[𝕜] G) : 𝓢(E, F) →L[𝕜] 𝓢(E, G) :=
  mkCLM (fun f ↦ L ∘ f) (fun _ _ _ ↦ by simp) (fun _ _ _ ↦ by simp)
    (fun f ↦ (L.restrictScalars ℝ).contDiff.comp (f.smooth ⊤)) <| by
  intro ⟨k, n⟩
  use {⟨k, n⟩}, ‖L‖, by positivity
  intro f x
  simp only [Finset.sup_singleton, schwartzSeminormFamily_apply]
  calc
    _ = ‖x‖ ^ k * ‖(L.restrictScalars ℝ).compContinuousMultilinearMap
        (iteratedFDeriv ℝ n f x)‖ := by
      congr
      exact (L.restrictScalars ℝ).iteratedFDeriv_comp_left f.smooth'.contDiffAt (mod_cast le_top)
    _ ≤ ‖x‖ ^ k * (‖L‖ * ‖iteratedFDeriv ℝ n f x‖) := by
      gcongr
      apply (L.restrictScalars ℝ).norm_compContinuousMultilinearMap_le
    _ = ‖L‖ * (‖x‖ ^ k * ‖iteratedFDeriv ℝ n f x‖) := by ring
    _ ≤ ‖L‖ * (SchwartzMap.seminorm 𝕜 k n) f := by
      grw [le_seminorm 𝕜 k n f x]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean#L1033).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b4a9c9cc147973695cfef46415308ed215424ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
