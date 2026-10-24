# norm_eq_prod_embeddings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12daca3406924e941496944e3d762231deb161d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a914ed6d-62e5-3d7c-792f-fa246cdef52d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2138c9d9-64c1-35a2-4588-145a506ecfed",
  "kind": "theorem",
  "lexical_name": "norm_eq_prod_embeddings",
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
  "slug": "norm-eq-prod-embeddings--6786af6f8726616e793c9fa1",
  "source": {
    "blob": "12daca3406924e941496944e3d762231deb161d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 301,
    "path": "GRWTSK/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6786af6f8726616e793c9fa1baf9b9554139629c4259bc687a9610efc8a06316",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2138c9d9-64c1-35a2-4588-145a506ecfed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_prod_embeddings [FiniteDimensional K L] [IsSeparable K L] [IsAlgClosed E] (x : L) :
    algebraMap K E (norm K x) = ∏ σ : L →ₐ[K] E, σ x := by
  have hx := IsSeparable.isIntegral K x
  rw [norm_eq_norm_adjoin K x, RingHom.map_pow, ← adjoin.powerBasis_gen hx,
    norm_eq_prod_embeddings_gen E (adjoin.powerBasis hx) (IsAlgClosed.splits_codomain _)]
  · exact (prod_embeddings_eq_finrank_pow L (L:= K⟮x⟯) E (adjoin.powerBasis hx)).symm
  · haveI := isSeparable_tower_bot_of_isSeparable K K⟮x⟯ L
    exact IsSeparable.separable K _
#align algebra.norm_eq_prod_embeddings Algebra.norm_eq_prod_embeddings

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12daca3406924e941496944e3d762231deb161d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
