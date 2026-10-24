# exists_retraction_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58241e86-28df-2a65-b7f5-3405835bf88e",
  "kind": "theorem",
  "lexical_name": "exists_retraction_of_isClosed",
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
  "slug": "exists-retraction-of-isclosed--60994ec045ec25c66bbeb26c",
  "source": {
    "blob": "44c5d988f5a1019f59a0fed5fbd348c5bef91c11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 664,
    "line": 660,
    "path": "GRWTSK/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60994ec045ec25c66bbeb26cd532264ac1c4d27ef7362956e0bf96f544594be8",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58241e86-28df-2a65-b7f5-3405835bf88e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 660–664.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_retraction_of_isClosed {s : Set (∀ n, E n)} (hs : IsClosed s) (hne : s.Nonempty) :
    ∃ f : (∀ n, E n) → ∀ n, E n, (∀ x ∈ s, f x = x) ∧ range f = s ∧ Continuous f := by
  rcases exists_lipschitz_retraction_of_isClosed hs hne with ⟨f, fs, frange, hf⟩
  exact ⟨f, fs, frange, hf.continuous⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean#L660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44c5d988f5a1019f59a0fed5fbd348c5bef91c11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
