# generate_presieveOfSections_mem_grothendieckTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6a24cf3-484b-d5c8-a6b8-7eb726eeaad0",
  "kind": "lemma",
  "lexical_name": "generate_presieveOfSections_mem_grothendieckTopology",
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
  "slug": "generate-presieveofsections-mem-grothendiecktopology--cca1c2c5354ebe386c8568f0",
  "source": {
    "blob": "9ca4bec62191cc2f6f07f1c5112b1a210241d7ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 186,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant1613b4e9d6ea33e98ceb6db64a704f54d36d68fd667edb32fdea2b358406730f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cca1c2c5354ebe386c8568f0248e462ccdfafedfcb678d8dfbdac673e1b8bc2b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant1613b4e9d6ea33e98ceb6db64a704f54d36d68fd667edb32fdea2b358406730f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6a24cf3-484b-d5c8-a6b8-7eb726eeaad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma generate_presieveOfSections_mem_grothendieckTopology
    {U : X.AffineZariskiSite} {s : Set Γ(X, U.toOpens)} :
    Sieve.generate (presieveOfSections U s) ∈ grothendieckTopology X U ↔ Ideal.span s = ⊤ := by
  rw [← U.2.self_le_iSup_basicOpen_iff, mem_grothendieckTopology, SetLike.le_def]
  refine forall₂_congr fun x hx ↦ ?_
  simp only [exists_and_left, TopologicalSpace.Opens.iSup_mk,
    TopologicalSpace.Opens.carrier_eq_coe, Set.iUnion_coe_set, TopologicalSpace.Opens.mem_mk,
    Set.mem_iUnion, SetLike.mem_coe, exists_prop, generate_presieveOfSections]
  constructor
  · simp only [basicOpen_mul]
    rintro ⟨⟨V, hV⟩, ⟨f, hfs, g, rfl⟩, -, hxV⟩
    exact ⟨f, hfs, hxV.1⟩
  · rintro ⟨f, hfs, hxf⟩
    refine ⟨U.basicOpen _, ⟨f, hfs, 1, rfl⟩, ⟨_, rfl⟩, by simpa using hxf⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant1613b4e9d6ea33e98ceb6db64a704f54d36d68fd667edb32fdea2b358406730f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant1613b4e9d6ea33e98ceb6db64a704f54d36d68fd667edb32fdea2b358406730f.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ca4bec62191cc2f6f07f1c5112b1a210241d7ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
