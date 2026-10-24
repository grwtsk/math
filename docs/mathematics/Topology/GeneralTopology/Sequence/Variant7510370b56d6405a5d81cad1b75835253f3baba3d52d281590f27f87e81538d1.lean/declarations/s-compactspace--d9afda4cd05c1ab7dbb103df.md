# S'_compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92a00d77-f77f-176a-9450-b03dde7a878b",
  "kind": "lemma",
  "lexical_name": "S'_compactSpace",
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
  "slug": "s-compactspace--d9afda4cd05c1ab7dbb103df",
  "source": {
    "blob": "7d15b74f4501aadb602807806477e8d2351df0f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 182,
    "path": "GRWTSK/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9afda4cd05c1ab7dbb103dff580795ffe2da46374a2241189da4339f4365153",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92a00d77-f77f-176a-9450-b03dde7a878b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma S'_compactSpace [TopologicalSpace S] [T2Space S] [TopologicalSpace T]
    [CompactSpace T] [TopologicalSpace X] [T1Space (OnePoint X)]
    (π : T → S × OnePoint X) (hπ : Continuous π) : CompactSpace (S' π) := by
  rw [← isCompact_iff_compactSpace, show S' π =
    ⋂ (n : OnePoint X) (m : OnePoint X), {x | (π (x n).val).1 = (π (x m).val).1} by aesop]
  have (x : OnePoint X) : CompactSpace <| (Prod.snd ∘ π) ⁻¹' {x} :=
    isCompact_iff_compactSpace.mp (IsClosed.preimage (by fun_prop) isClosed_singleton).isCompact
  refine (isClosed_iInter fun n ↦ isClosed_iInter fun m ↦ isClosed_eq ?_ ?_).isCompact
  all_goals fun_prop

end

/-- This object is used to show that a certain map `T ⟶ X` descends
to a map `S ⊗ N∪{∞} → X`. Because epimorphisms in `LightProfinite`
are effective, it does so if the two maps `pullback π π → T → S ⊗ N∪{∞}`
are equal. This can be checked by precomposing with an epimorphism,
which is given by this morphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d15b74f4501aadb602807806477e8d2351df0f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
