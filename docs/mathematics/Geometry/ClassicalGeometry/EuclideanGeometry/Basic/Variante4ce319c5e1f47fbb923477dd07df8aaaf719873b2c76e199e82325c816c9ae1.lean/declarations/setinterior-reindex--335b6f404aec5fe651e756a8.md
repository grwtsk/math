# setInterior_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:698e82cb-8c9e-1e75-bee0-d3f839809d23",
  "kind": "lemma",
  "lexical_name": "setInterior_reindex",
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
  "slug": "setinterior-reindex--335b6f404aec5fe651e756a8",
  "source": {
    "blob": "7ad06735d7ccbc4a48f226c875c5799ed4eb37e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 405,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:335b6f404aec5fe651e756a898fa90d8bd6363b7916c9c914ea8d04880a4f36f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:698e82cb-8c9e-1e75-bee0-d3f839809d23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma setInterior_reindex (I : Set k) {m n : ℕ} (s : Simplex k P n)
    (e : Fin (n + 1) ≃ Fin (m + 1)) : (s.reindex e).setInterior I = s.setInterior I := by
  ext p
  refine ⟨fun ⟨w, hw, hwI, h⟩ ↦ ?_, fun ⟨w, hw, hwI, h⟩ ↦ ?_⟩
  · subst h
    simp_rw [reindex]
    rw [← Function.comp_id w, ← e.self_comp_symm, ← Function.comp_assoc,
      ← Equiv.coe_toEmbedding, ← Finset.univ.affineCombination_map e.symm.toEmbedding,
      map_univ_equiv]
    have hw' : ∑ i, (w ∘ e) i = 1 := by rwa [sum_comp_equiv, map_univ_equiv]
    rw [affineCombination_mem_setInterior_iff hw']
    exact fun i ↦ hwI (e i)
  · subst h
    rw [← Function.comp_id w, ← Function.comp_id s.points, ← e.symm_comp_self,
      ← Function.comp_assoc, ← Function.comp_assoc, ← e.coe_toEmbedding,
      ← Finset.univ.affineCombination_map e.toEmbedding, map_univ_equiv]
    change Finset.univ.affineCombination k (s.reindex e).points _ ∈ _
    have hw' : ∑ i, (w ∘ e.symm) i = 1 := by rwa [sum_comp_equiv, map_univ_equiv]
    rw [affineCombination_mem_setInterior_iff hw']
    exact fun i ↦ hwI (e.symm i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ad06735d7ccbc4a48f226c875c5799ed4eb37e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
