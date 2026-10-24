# iff_map_piEvalRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5c6260446a323f72176fa98257e8b930e25eea1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4777f4c2ef4536053471dab6261d9ccbc0d8c1e2825d19dcddd07466d7ae898.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06b11a37-3a04-6ea6-3a9c-97bc6bf0bd1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:241e60f1-32c5-0ea4-91bf-661dd6a257c7",
  "kind": "theorem",
  "lexical_name": "iff_map_piEvalRingHom",
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
  "slug": "iff-map-pievalringhom--11e07c1b65cfc471edd978ba",
  "source": {
    "blob": "c5c6260446a323f72176fa98257e8b930e25eea1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 55,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variante4777f4c2ef4536053471dab6261d9ccbc0d8c1e2825d19dcddd07466d7ae898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11e07c1b65cfc471edd978ba25d048dc548dc0fe347f90d14d43d85c9b1e9074",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pi/Variante4777f4c2ef4536053471dab6261d9ccbc0d8c1e2825d19dcddd07466d7ae898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:241e60f1-32c5-0ea4-91bf-661dd6a257c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_map_piEvalRingHom [Finite ι] :
    IsLocalization M S' ↔ IsLocalization (.pi .univ fun i ↦ M.map (Pi.evalRingHom R i)) S' :=
  iff_of_le_of_exists_dvd M _ (fun m hm i _ ↦ ⟨m, hm, rfl⟩) fun n hn ↦ by
    choose m mem eq using hn
    have := Fintype.ofFinite ι
    refine ⟨∏ i, m i ⟨⟩, prod_mem fun i _ ↦ mem i _, pi_dvd_iff.mpr fun i ↦ ?_⟩
    rw [Fintype.prod_apply]
    exact (eq i ⟨⟩).symm.dvd.trans (Finset.dvd_prod_of_mem _ <| Finset.mem_univ _)

variable [∀ i, IsLocalization (M.map (Pi.evalRingHom R i)) (S i)]

/-- Let `M` be a submonoid of a direct product of commutative rings `R i`, and let `M' i` denote
the projection of `M` onto each corresponding factor. Given a ring homomorphism from the direct
product `Π i, R i` to the product of the localizations of each `R i` at `M' i`, every `y : M`
maps to a unit under this homomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pi/Variante4777f4c2ef4536053471dab6261d9ccbc0d8c1e2825d19dcddd07466d7ae898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pi/Variante4777f4c2ef4536053471dab6261d9ccbc0d8c1e2825d19dcddd07466d7ae898.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5c6260446a323f72176fa98257e8b930e25eea1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
