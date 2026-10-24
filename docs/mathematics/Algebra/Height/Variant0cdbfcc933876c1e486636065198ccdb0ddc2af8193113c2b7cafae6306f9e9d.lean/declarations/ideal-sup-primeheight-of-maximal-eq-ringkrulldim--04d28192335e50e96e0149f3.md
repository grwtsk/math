# Ideal.sup_primeHeight_of_maximal_eq_ringKrullDim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e7190e9-8c99-ee8d-e2f7-2bd49c4ffec0",
  "kind": "lemma",
  "lexical_name": "Ideal.sup_primeHeight_of_maximal_eq_ringKrullDim",
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
  "slug": "ideal-sup-primeheight-of-maximal-eq-ringkrulldim--04d28192335e50e96e0149f3",
  "source": {
    "blob": "77c8b8ec335772e7f87acc498acec2e9171eb0d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 563,
    "path": "GRWTSK/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04d28192335e50e96e0149f31ded720ea77fc665ef7083f722077494b6708cd2",
  "verification": {
    "reference": "docs/verification/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e7190e9-8c99-ee8d-e2f7-2bd49c4ffec0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma Ideal.sup_primeHeight_of_maximal_eq_ringKrullDim [Nontrivial R] :
    ↑(⨆ (I : Ideal R) (_ : I.IsMaximal), I.primeHeight) = ringKrullDim R := by
  simp_rw [← Ideal.height_eq_primeHeight, Ideal.sup_isMaximal_height_eq_ringKrullDim]

section isLocalization

variable
  (Rₚ : ∀ (P : Ideal R) [P.IsMaximal], Type*)
  [∀ (P : Ideal R) [P.IsMaximal], CommRing (Rₚ P)]
  [∀ (P : Ideal R) [P.IsMaximal], Algebra R (Rₚ P)]
  [∀ (P : Ideal R) [P.IsMaximal], IsLocalization.AtPrime (Rₚ P) P]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c8b8ec335772e7f87acc498acec2e9171eb0d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
