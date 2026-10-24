# ramificationIdx'_comap_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b61e9c13820bfc7d407bc90954f5dd2084bed701",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dce0532a-8a0c-0de9-4c2a-5adf320dd3a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b4cfe93-05eb-638b-3bc9-951974f972f7",
  "kind": "lemma",
  "lexical_name": "ramificationIdx'_comap_eq",
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
  "slug": "ramificationidx-comap-eq--e4cd5d537b39cb2ef426784e",
  "source": {
    "blob": "b61e9c13820bfc7d407bc90954f5dd2084bed701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 168,
    "path": "GRWTSK/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4cd5d537b39cb2ef426784e079a5058b4164561e5a6f3d65ca9cd7377e18650",
  "verification": {
    "reference": "docs/verification/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b4cfe93-05eb-638b-3bc9-951974f972f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ramificationIdx'_comap_eq (e : S ≃ₐ[R] S₁) (P : Ideal S₁) :
    ramificationIdx' p (P.comap e) = ramificationIdx' p P := by
  dsimp only [ramificationIdx']
  congr 1
  ext n
  simp only [Set.mem_ofPred_eq, Ideal.map_le_iff_le_comap]
  rw [← comap_coe e, ← e.toRingEquiv_toRingHom, comap_coe, ← RingEquiv.symm_symm (e : S ≃+* S₁),
    ← map_comap_of_equiv, ← Ideal.map_pow, map_comap_of_equiv, ← comap_coe (RingEquiv.symm _),
    comap_comap, RingEquiv.symm_symm, e.toRingEquiv_toRingHom, ← e.toAlgHom_toRingHom,
    AlgHom.comp_algebraMap]

@[deprecated (since := "2026-07-01")] alias ramificationIdx_comap_eq := ramificationIdx'_comap_eq

variable (p) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b61e9c13820bfc7d407bc90954f5dd2084bed701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
