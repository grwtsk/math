# prodOfFinsuppNat_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff38aa4dfd90a84c55cbf11f917e0296d9314d38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00de65b315278aca7d749b08348198e477b90bf0390bb6b646bd748a4dcb7e88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6560540-96b5-d9a2-4f61-4948991e2a46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fccaab9d-df01-8bfc-72ab-a907f13ef98e",
  "kind": "theorem",
  "lexical_name": "prodOfFinsuppNat_injective",
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
  "slug": "prodoffinsuppnat-injective--6de11bb0f28f604b0f67f6bd",
  "source": {
    "blob": "ff38aa4dfd90a84c55cbf11f917e0296d9314d38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 133,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant00de65b315278aca7d749b08348198e477b90bf0390bb6b646bd748a4dcb7e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6de11bb0f28f604b0f67f6bd7e5cd825f5035c0c14cd9965b6ccd0af282263f8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant00de65b315278aca7d749b08348198e477b90bf0390bb6b646bd748a4dcb7e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fccaab9d-df01-8bfc-72ab-a907f13ef98e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prodOfFinsuppNat_injective (inj : Injective f) : Injective (prodOfFinsuppNat f) := by
  intro x y
  let s := x.support ∪ y.support
  obtain eq | ne := s.eq_empty_or_nonempty
  · simp_all [s]
  set n := s.max' ne with hn
  clear_value n; revert x y
  induction n using Nat.strong_induction_on with | h n ih =>
  intro x y s _ hn eq
  rw [← x.single_add_erase 0, ← y.single_add_erase 0]
  simp_rw [← mapDomain_comapDomain_nat_add_one, ← f.fst_prodOfFinsuppNat, eq]
  congr 2
  by_contra ne
  apply ne (ih _ _ _ rfl (inj _))
  · contrapose! ne; simp_all [-comapDomain_support]
  · simp +contextual [hn, s, ← Nat.succ_le_iff, Finset.le_max']
  simp_rw [← snd_prodOfFinsuppNat, eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant00de65b315278aca7d749b08348198e477b90bf0390bb6b646bd748a4dcb7e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant00de65b315278aca7d749b08348198e477b90bf0390bb6b646bd748a4dcb7e88.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff38aa4dfd90a84c55cbf11f917e0296d9314d38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
