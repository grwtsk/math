# algebraicIndependent_sUnion_of_directed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddb476ea-20a4-9b16-52c2-7afa15849d1b",
  "kind": "theorem",
  "lexical_name": "algebraicIndependent_sUnion_of_directed",
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
  "slug": "algebraicindependent-sunion-of-directed--b3d54441be400ffd27891f9c",
  "source": {
    "blob": "e52a13a46576843d7db7108d9b73cfd6422f5454",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 419,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant69cf4eafbfdecf819a7c64359a9cee781c3641ce55b08116fab33305da9f9346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3d54441be400ffd27891f9c0812e0c4cd97abfd65394323628d877bb68e1c9e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant69cf4eafbfdecf819a7c64359a9cee781c3641ce55b08116fab33305da9f9346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddb476ea-20a4-9b16-52c2-7afa15849d1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraicIndependent_sUnion_of_directed {s : Set (Set A)} (hsn : s.Nonempty)
    (hs : DirectedOn (· ⊆ ·) s) (h : ∀ a ∈ s, AlgebraicIndependent R ((↑) : a → A)) :
    AlgebraicIndependent R ((↑) : ⋃₀ s → A) := by
  letI : Nonempty s := Nonempty.to_subtype hsn
  rw [sUnion_eq_iUnion]
  exact algebraicIndependent_iUnion_of_directed hs.directed_val (by simpa using h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant69cf4eafbfdecf819a7c64359a9cee781c3641ce55b08116fab33305da9f9346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant69cf4eafbfdecf819a7c64359a9cee781c3641ce55b08116fab33305da9f9346.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e52a13a46576843d7db7108d9b73cfd6422f5454` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
