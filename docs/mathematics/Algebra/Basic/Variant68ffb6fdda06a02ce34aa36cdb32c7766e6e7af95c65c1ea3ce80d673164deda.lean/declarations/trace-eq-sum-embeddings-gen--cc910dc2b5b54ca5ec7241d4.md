# trace_eq_sum_embeddings_gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20176e2845712dce4896a19f08927dda14b9b47f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64f48f95-0700-60cf-c8ea-70ddd6dd6752",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e8706c4-ef2f-5eef-bf4a-2ccec7438834",
  "kind": "theorem",
  "lexical_name": "trace_eq_sum_embeddings_gen",
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
  "slug": "trace-eq-sum-embeddings-gen--cc910dc2b5b54ca5ec7241d4",
  "source": {
    "blob": "20176e2845712dce4896a19f08927dda14b9b47f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 212,
    "path": "GRWTSK/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc910dc2b5b54ca5ec7241d4bad1ca7c76ae654fac0c90002b67a02030cfd803",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e8706c4-ef2f-5eef-bf4a-2ccec7438834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trace_eq_sum_embeddings_gen (pb : PowerBasis K L)
    (hE : (minpoly K pb.gen).Splits (algebraMap K E)) (hfx : IsSeparable K pb.gen) :
    algebraMap K E (Algebra.trace K L pb.gen) =
      (@Finset.univ _ (PowerBasis.AlgHom.fintype pb)).sum fun σ => σ pb.gen := by
  letI := Classical.decEq E
  -- Porting note: the following `letI` was not needed.
  letI : Fintype (L →ₐ[K] E) := PowerBasis.AlgHom.fintype pb
  rw [pb.trace_gen_eq_sum_roots hE, Fintype.sum_equiv pb.liftEquiv', Finset.sum_mem_multiset,
    Finset.sum_eq_multiset_sum, Multiset.toFinset_val, Multiset.dedup_eq_self.mpr _,
    Multiset.map_id]
  · exact nodup_roots ((separable_map _).mpr hfx)
  -- Porting note: the following goal does not exist in mathlib3.
  · exact (fun x => x.1)
  · intro x; rfl
  · intro σ
    rw [PowerBasis.liftEquiv'_apply_coe]

variable [IsAlgClosed E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20176e2845712dce4896a19f08927dda14b9b47f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
