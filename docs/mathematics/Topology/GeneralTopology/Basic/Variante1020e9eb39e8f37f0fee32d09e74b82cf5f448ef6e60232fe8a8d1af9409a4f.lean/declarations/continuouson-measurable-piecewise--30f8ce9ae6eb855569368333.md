# ContinuousOn.measurable_piecewise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5468f4e-2dec-6ace-37f6-af92efb06476",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.measurable_piecewise",
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
  "slug": "continuouson-measurable-piecewise--30f8ce9ae6eb855569368333",
  "source": {
    "blob": "ec87012329030fbd534787292e44cc35682b104e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 492,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30f8ce9ae6eb8555693683333458c7136922392fe6c21cc7e4e4ab44f91877c6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5468f4e-2dec-6ace-37f6-af92efb06476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.measurable_piecewise {f g : α → γ} {s : Set α} [∀ j : α, Decidable (j ∈ s)]
    (hf : ContinuousOn f s) (hg : ContinuousOn g sᶜ) (hs : MeasurableSet s) :
    Measurable (s.piecewise f g) := by
  refine measurable_of_isOpen fun t ht => ?_
  rw [piecewise_preimage, Set.ite]
  apply MeasurableSet.union
  · rcases _root_.continuousOn_iff'.1 hf t ht with ⟨u, u_open, hu⟩
    rw [hu]
    exact u_open.measurableSet.inter hs
  · rcases _root_.continuousOn_iff'.1 hg t ht with ⟨u, u_open, hu⟩
    rw [diff_eq_compl_inter, inter_comm, hu]
    exact u_open.measurableSet.inter hs.compl

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec87012329030fbd534787292e44cc35682b104e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
