# splits_of_exists_multiset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfc628fc-47ee-9a86-3246-ea0d5e67124b",
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
  "slug": "splits-of-exists-multiset--01f48b08888222b4ff514307",
  "source": {
    "blob": "50f036bce8c161f2f4ba88c3828f4d107973030b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 399,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant39e8d0c10b6e86fc522b98488016e9e19df3b541c0c852754b9ee4b099b379d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01f48b08888222b4ff514307e1475aee9c3b245dde37b584d746e3dd987552c8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Splits/Variant39e8d0c10b6e86fc522b98488016e9e19df3b541c0c852754b9ee4b099b379d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfc628fc-47ee-9a86-3246-ea0d5e67124b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–414.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Splits/Variant39e8d0c10b6e86fc522b98488016e9e19df3b541c0c852754b9ee4b099b379d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant39e8d0c10b6e86fc522b98488016e9e19df3b541c0c852754b9ee4b099b379d8.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f036bce8c161f2f4ba88c3828f4d107973030b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
