# window_successor_of_choice_regions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2e41645-b1af-0ad1-0fe6-87df88364ec4",
  "kind": "theorem",
  "lexical_name": "window_successor_of_choice_regions",
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
  "slug": "window-successor-of-choice-regions--3a796e4ecbc30835e6921f4e",
  "source": {
    "blob": "2564a62cd4dc91a81e5a0e46016c59338bd1af15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 153,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a796e4ecbc30835e6921f4e112118e6170e0aab9ffb99d8a70567800d2d8c55",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2e41645-b1af-0ad1-0fe6-87df88364ec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem window_successor_of_choice_regions {K : ℕ} (hbase : WindowRH K)
    {ι : Type*} (P : ι → UniformPairRegion.Packet) (C : ι → Config)
    (hcheck : ∀ i, (P i).choiceCheck (C i)=true)
    (hbind : ∀ i, (P i).Binds (C i))
    (hcover : ∀ z ∈ HeightFiber.successorBox K, MirrorApproximation.Eligible z →
      ∃ i, z ∈ (P i).carrier) : WindowRH (K+1) := by
  apply HeightFiber.window_successor_of_fibers hbase
  apply HeightFiber.targetCapacity_of_rhOn
  intro z hz hz0
  by_contra hoff
  obtain ⟨i,hi⟩ := hcover z hz ⟨hz0.mem_critical_strip.1,hz0.mem_critical_strip.2,hoff⟩
  exact hoff ((P i).choice_rhOn (hcheck i) (hbind i) z hi hz0)

end ChannelChoice
end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2564a62cd4dc91a81e5a0e46016c59338bd1af15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
