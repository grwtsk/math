# continuousOn_piecewise_ite'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32859f3e-4fa5-41ea-1e9d-2b176d63fe99",
  "kind": "theorem",
  "lexical_name": "continuousOn_piecewise_ite'",
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
  "slug": "continuouson-piecewise-ite--0596e2187b9618ce1010fad6",
  "source": {
    "blob": "931e16e1a32865a485503e751b0a0a5459c806c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1260,
    "line": 1251,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variantdb130ccd57fa07e2a3ffd8fa5f25210b825740e1078d7ec32fd9b3c66a973d9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0596e2187b9618ce1010fad663e6e5976ea4a6d24821c99257dabb7c1eaf4ad7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousOn/Variantdb130ccd57fa07e2a3ffd8fa5f25210b825740e1078d7ec32fd9b3c66a973d9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32859f3e-4fa5-41ea-1e9d-2b176d63fe99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1251–1260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_piecewise_ite' {s s' t : Set α} {f f' : α → β} [∀ x, Decidable (x ∈ t)]
    (h : ContinuousOn f (s ∩ closure t)) (h' : ContinuousOn f' (s' ∩ closure tᶜ))
    (H : s ∩ frontier t = s' ∩ frontier t) (Heq : EqOn f f' (s ∩ frontier t)) :
    ContinuousOn (t.piecewise f f') (t.ite s s') := by
  apply ContinuousOn.piecewise
  · rwa [ite_inter_of_inter_eq _ H]
  · rwa [ite_inter_closure_eq_of_inter_frontier_eq H]
  · rwa [ite_inter_closure_compl_eq_of_inter_frontier_eq H]
#align continuous_on_piecewise_ite' continuousOn_piecewise_ite'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousOn/Variantdb130ccd57fa07e2a3ffd8fa5f25210b825740e1078d7ec32fd9b3c66a973d9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousOn/Variantdb130ccd57fa07e2a3ffd8fa5f25210b825740e1078d7ec32fd9b3c66a973d9f.lean#L1251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `931e16e1a32865a485503e751b0a0a5459c806c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
