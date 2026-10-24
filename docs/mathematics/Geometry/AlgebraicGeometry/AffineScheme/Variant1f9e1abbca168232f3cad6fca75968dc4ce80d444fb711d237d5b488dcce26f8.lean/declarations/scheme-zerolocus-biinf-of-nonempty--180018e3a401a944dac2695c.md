# Scheme.zeroLocus_biInf_of_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc4387a4-6c5b-8d16-9db6-fe6d26a91ba2",
  "kind": "lemma",
  "lexical_name": "Scheme.zeroLocus_biInf_of_nonempty",
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
  "slug": "scheme-zerolocus-biinf-of-nonempty--180018e3a401a944dac2695c",
  "source": {
    "blob": "0a0305ec46f99a3963a025fcdc52db6af41c9c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1208,
    "line": 1200,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:180018e3a401a944dac2695c424fd12d98d9e49d2fd6ec5de847167989084a43",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc4387a4-6c5b-8d16-9db6-fe6d26a91ba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1200–1208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.zeroLocus_biInf_of_nonempty
    {X : Scheme.{u}} {U : X.Opens} {ι : Type*}
    (I : ι → Ideal Γ(X, U)) {t : Set ι} (ht : t.Finite) (ht' : t.Nonempty) :
    X.zeroLocus (U := U) ↑(⨅ i ∈ t, I i) = ⋃ i ∈ t, X.zeroLocus (U := U) (I i) := by
  rw [zeroLocus_biInf I ht, Set.union_eq_left]
  obtain ⟨i, hi⟩ := ht'
  exact fun x hx ↦ Set.mem_iUnion₂_of_mem hi
    (codisjoint_iff_compl_le_left.mp (X.codisjoint_zeroLocus (U := U) (I i)) hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean#L1200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0305ec46f99a3963a025fcdc52db6af41c9c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
