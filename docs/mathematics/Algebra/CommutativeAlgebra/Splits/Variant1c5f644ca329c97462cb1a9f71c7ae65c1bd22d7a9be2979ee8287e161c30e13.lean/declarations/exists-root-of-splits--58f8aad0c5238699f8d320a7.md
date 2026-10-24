# exists_root_of_splits'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e64863c5c39ca3d5c37784ea25b8903eddde656",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b650053-7e78-424a-217f-b92950904095",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a05de192-651f-41ac-4864-4ba17940c200",
  "kind": "theorem",
  "lexical_name": "exists_root_of_splits'",
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
  "slug": "exists-root-of-splits--58f8aad0c5238699f8d320a7",
  "source": {
    "blob": "0e64863c5c39ca3d5c37784ea25b8903eddde656",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 172,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58f8aad0c5238699f8d320a7a4b899f024d3bfa2bda410db6289ec0dca4b0bb0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a05de192-651f-41ac-4864-4ba17940c200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_root_of_splits' {f : K[X]} (hs : Splits i f) (hf0 : degree (f.map i) ≠ 0) :
    ∃ x, eval₂ i x f = 0 :=
  if hf0' : f.map i = 0 then by simp [eval₂_eq_eval_map, hf0']
  else
    let ⟨g, hg⟩ :=
      WfDvdMonoid.exists_irreducible_factor
        (show ¬IsUnit (f.map i) from mt isUnit_iff_degree_eq_zero.1 hf0) hf0'
    let ⟨x, hx⟩ := exists_root_of_degree_eq_one (hs.resolve_left hf0' hg.1 hg.2)
    let ⟨i, hi⟩ := hg.2
    ⟨x, by rw [← eval_map, hi, eval_mul, show _ = _ from hx, zero_mul]⟩
#align polynomial.exists_root_of_splits' Polynomial.exists_root_of_splits'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e64863c5c39ca3d5c37784ea25b8903eddde656` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
