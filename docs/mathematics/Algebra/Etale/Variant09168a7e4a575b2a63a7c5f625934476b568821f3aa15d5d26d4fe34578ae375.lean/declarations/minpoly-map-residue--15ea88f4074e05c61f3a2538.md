# minpoly_map_residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "511066155563b54d10bba61850935cfc61f0335b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09168a7e4a575b2a63a7c5f625934476b568821f3aa15d5d26d4fe34578ae375.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5684b932-8b76-56b0-0dab-db7f72730426",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2ce117a-bb33-d30a-62f9-f92ec1e2058b",
  "kind": "lemma",
  "lexical_name": "minpoly_map_residue",
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
  "slug": "minpoly-map-residue--15ea88f4074e05c61f3a2538",
  "source": {
    "blob": "511066155563b54d10bba61850935cfc61f0335b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 120,
    "path": "GRWTSK/Algebra/Etale/Variant09168a7e4a575b2a63a7c5f625934476b568821f3aa15d5d26d4fe34578ae375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15ea88f4074e05c61f3a2538da0afaeb0403ac7b0c8c15a1b606b1852ccdb430",
  "verification": {
    "reference": "docs/verification/Algebra/Etale/Variant09168a7e4a575b2a63a7c5f625934476b568821f3aa15d5d26d4fe34578ae375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2ce117a-bb33-d30a-62f9-f92ec1e2058b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma minpoly_map_residue [Algebra.Etale R S]
    {β : S} (hadj : Algebra.adjoin R {β} = ⊤) :
    (minpoly R β).map (residue R) = minpoly (ResidueField R) (residue S β) := by
  have h := minpoly.monic <| Algebra.IsIntegral.isIntegral (R := R) β
  -- Both monic, same degree, divisibility ⟹ equal
  refine eq_of_monic_of_dvd_of_natDegree_le
    (minpoly.monic <| Algebra.IsIntegral.isIntegral <| residue S β)
    (h.map _) (minpoly.dvd (ResidueField R) (residue S β) ?_) ?_
  · rw [← map_aeval_eq_aeval_map (ψ := residue S) (φ := residue R) rfl]
    simp
  · have : Module.Free R S := Module.free_of_flat_of_isLocalRing
    have hβ₀ := (adjoin_residue_eq_top_iff_adjoin_eq_top β).mpr hadj
    rw [h.natDegree_map _,
      ← (IsAdjoinRootMonic.mkOfAdjoinEqTop' hadj).finrank,
      finrank_eq_finrank_residueField,
      (IsAdjoinRootMonic.mkOfAdjoinEqTop' hβ₀).finrank]

/-- If `R → S` is étale and `R[β] = S`, then `f'(β)` is a unit in `S`,
where `f = minpoly R β`. The proof reduces to separability of the
residue field extension via `minpoly_map_residue`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Etale/Variant09168a7e4a575b2a63a7c5f625934476b568821f3aa15d5d26d4fe34578ae375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Etale/Variant09168a7e4a575b2a63a7c5f625934476b568821f3aa15d5d26d4fe34578ae375.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `511066155563b54d10bba61850935cfc61f0335b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
