# generate_presieveOfSections_mem_grothendieckTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfe955b2-bef5-9406-a591-a0d18e78c192",
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
  "slug": "generate-presieveofsections-mem-grothendiecktopology--114bdb371d71cb2b1af12570",
  "source": {
    "blob": "4ebcf3231997bf1fd9da427798fb5b3bddc39e0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 169,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:114bdb371d71cb2b1af12570bc933325789f0795adef16772a15ee4fc4da511d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfe955b2-bef5-9406-a591-a0d18e78c192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma generate_presieveOfSections_mem_grothendieckTopology
    {U : X.AffineZariskiSite} {s : Set Γ(X, U.toOpens)} :
    Sieve.generate (presieveOfSections U s) ∈ grothendieckTopology X U ↔ Ideal.span s = ⊤ := by
  rw [← U.2.self_le_basicOpen_union_iff, mem_grothendieckTopology, SetLike.le_def]
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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ebcf3231997bf1fd9da427798fb5b3bddc39e0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
