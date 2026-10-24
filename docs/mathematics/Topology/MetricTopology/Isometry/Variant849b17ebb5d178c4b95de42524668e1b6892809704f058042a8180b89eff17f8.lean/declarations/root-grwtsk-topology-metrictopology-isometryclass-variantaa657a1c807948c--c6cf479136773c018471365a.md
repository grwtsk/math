# _root_.GRWTSK.Topology.MetricTopology.IsometryClass.Variantaa657a1c807948c888c2832b8cca862229a033737422164dbe38330abd3fd1f2.Fin.edist_append_eq_max_edist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e44106a-94e5-5077-caf2-0a0466b2a5e7",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.MetricTopology.IsometryClass.Variantaa657a1c807948c888c2832b8cca862229a033737422164dbe38330abd3fd1f2.Fin.edist_append_eq_max_edist",
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
  "slug": "root-grwtsk-topology-metrictopology-isometryclass-variantaa657a1c807948c--c6cf479136773c018471365a",
  "source": {
    "blob": "e405df521f75a815932509f90113a346d3008276",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 628,
    "path": "GRWTSK/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6cf479136773c018471365ab6544ec1d421e2a4bf9b284f06b35351a5dcd4ae",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e44106a-94e5-5077-caf2-0a0466b2a5e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.MetricTopology.IsometryClass.Variantaa657a1c807948c888c2832b8cca862229a033737422164dbe38330abd3fd1f2.Fin.edist_append_eq_max_edist (m n : ℕ) {x x2 : Fin m → α} {y y2 : Fin n → α} :
    edist (Fin.append x y) (Fin.append x2 y2) = max (edist x x2) (edist y y2) := by
  simp [edist_pi_def, Finset.sup_univ_eq_iSup, ← Equiv.iSup_comp (e := finSumFinEquiv),
    iSup_sum]

/-- The natural `IsometryEquiv` between `(Fin m → α) × (Fin n → α)` and `Fin (m + n) → α`.
`Fin.appendEquiv` as an `IsometryEquiv`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e405df521f75a815932509f90113a346d3008276` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
