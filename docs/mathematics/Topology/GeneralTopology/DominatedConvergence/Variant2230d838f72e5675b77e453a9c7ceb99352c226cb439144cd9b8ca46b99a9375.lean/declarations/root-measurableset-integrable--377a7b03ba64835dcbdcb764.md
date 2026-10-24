# _root_.measurableSet_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e0decd564c0ab8da2f65f26ab63ea91df1f2a8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a197809-2d84-364e-65fc-fa941a8f5615",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5411fea-2cb6-805b-1b23-5ff3657e0b70",
  "kind": "theorem",
  "lexical_name": "_root_.measurableSet_integrable",
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
  "slug": "root-measurableset-integrable--377a7b03ba64835dcbdcb764",
  "source": {
    "blob": "0e0decd564c0ab8da2f65f26ab63ea91df1f2a8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 245,
    "path": "GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:377a7b03ba64835dcbdcb764f3d137bc9b5b393d0c99934479d04f6bf6169d27",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5411fea-2cb6-805b-1b23-5ff3657e0b70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.measurableSet_integrable {β : Type*} {mβ : MeasurableSpace β} [SFinite μ]
    ⦃f : β → α → E⦄ (hf : StronglyMeasurable (Function.uncurry f)) :
    MeasurableSet {x | Integrable (f x) μ} := by
  simp_rw [Integrable, hf.of_uncurry_left.aestronglyMeasurable, true_and]
  exact measurableSet_lt (Measurable.lintegral_prod_right hf.enorm) measurable_const

/-- The `setToFun` operation is measurable. This shows that the integrand of (the right-hand-side
of) Fubini's theorem is measurable. This version has `f` in curried form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e0decd564c0ab8da2f65f26ab63ea91df1f2a8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
