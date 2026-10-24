# LinearMap.exists_extend_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da0bbe5c9629861010ab1be2f9373532eb7dffbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:865c59e1-a308-99f3-a3c7-fe73d7da0713",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fbcfac4f-5ac5-6d7e-db76-1b66820bae62",
  "kind": "theorem",
  "lexical_name": "LinearMap.exists_extend_of_notMem",
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
  "slug": "linearmap-exists-extend-of-notmem--2da9c56f6e2ac86698fa5d68",
  "source": {
    "blob": "da0bbe5c9629861010ab1be2f9373532eb7dffbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 269,
    "path": "GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2da9c56f6e2ac86698fa5d68cf25bf040d0555666dce00a06287e316e15bb87d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbcfac4f-5ac5-6d7e-db76-1b66820bae62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.exists_extend_of_notMem {p : Submodule K V} {v : V} (f : p →ₗ[K] V')
    (hv : v ∉ p) (y : V') : ∃ g : V →ₗ[K] V', g.comp p.subtype = f ∧ g v = y := by
  rcases (LinearPMap.supSpanSingleton ⟨p, f⟩ v y hv).toFun.exists_extend with ⟨g, hg⟩
  refine ⟨g, ?_, ?_⟩
  · ext x
    have := LinearPMap.supSpanSingleton_apply_mk_of_mem ⟨p, f⟩ y hv x.2
    simpa using congr($hg _).trans this
  · have := LinearPMap.supSpanSingleton_apply_self ⟨p, f⟩ y hv
    simpa using congr($hg _).trans this

@[deprecated (since := "2025-05-23")]
alias LinearMap.exists_extend_of_not_mem := LinearMap.exists_extend_of_notMem

open Submodule LinearMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da0bbe5c9629861010ab1be2f9373532eb7dffbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
