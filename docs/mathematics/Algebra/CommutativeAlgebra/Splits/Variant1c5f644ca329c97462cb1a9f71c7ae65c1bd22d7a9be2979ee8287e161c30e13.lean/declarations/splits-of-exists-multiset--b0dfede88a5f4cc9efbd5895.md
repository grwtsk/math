# splits_of_exists_multiset

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
      "line": 391,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a161aab3-6daa-b50b-b1e1-75be56b6d892",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c56cd60d-0dd8-2af0-fa51-801d804c230c",
  "kind": "theorem",
  "lexical_name": "splits_of_exists_multiset",
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
  "slug": "splits-of-exists-multiset--b0dfede88a5f4cc9efbd5895",
  "source": {
    "blob": "0e64863c5c39ca3d5c37784ea25b8903eddde656",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 391,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0dfede88a5f4cc9efbd58957a463423d5733f8e64937fa23635ec9454f8596a",
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

Occurrence: `result:c56cd60d-0dd8-2af0-fa51-801d804c230c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splits_of_exists_multiset {f : K[X]} {s : Multiset L}
    (hs : f.map i = C (i f.leadingCoeff) * (s.map fun a : L => X - C a).prod) : Splits i f :=
  if hf0 : f = 0 then hf0.symm ▸ splits_zero i
  else
    Or.inr @fun p hp hdp => by
      rw [irreducible_iff_prime] at hp
      rw [hs, ← Multiset.prod_toList] at hdp
      obtain hd | hd := hp.2.2 _ _ hdp
      · refine' (hp.2.1 <| isUnit_of_dvd_unit hd _).elim
        exact isUnit_C.2 ((leadingCoeff_ne_zero.2 hf0).isUnit.map i)
      · obtain ⟨q, hq, hd⟩ := hp.dvd_prod_iff.1 hd
        obtain ⟨a, _, rfl⟩ := Multiset.mem_map.1 (Multiset.mem_toList.1 hq)
        rw [degree_eq_degree_of_associated ((hp.dvd_prime_iff_associated <| prime_X_sub_C a).1 hd)]
        exact degree_X_sub_C a
#align polynomial.splits_of_exists_multiset Polynomial.splits_of_exists_multiset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e64863c5c39ca3d5c37784ea25b8903eddde656` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
