# Hom.toAlgHom_comp_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a08976f024735c867be48366f52b72c3bcd4aec7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bfa17f3-a352-b32a-dc89-7872cf19902d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a83deea-590b-2719-b51c-a777973b11f7",
  "kind": "lemma",
  "lexical_name": "Hom.toAlgHom_comp_apply",
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
  "slug": "hom-toalghom-comp-apply--fb5a78cde18648dcb945d168",
  "source": {
    "blob": "a08976f024735c867be48366f52b72c3bcd4aec7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 380,
    "path": "GRWTSK/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb5a78cde18648dcb945d1687a2113db85e7fdaae6a19eeee575bf20bcde6eec",
  "verification": {
    "reference": "docs/verification/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a83deea-590b-2719-b51c-a777973b11f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Hom.toAlgHom_comp_apply
    [Algebra R R''] [IsScalarTower R R' R''] [IsScalarTower R' R'' S'']
    [IsScalarTower R' S' S''] [IsScalarTower S S' S'']
    (f : Hom P P') (g : Hom P' P'') (x) :
    (g.comp f).toAlgHom x = g.toAlgHom (f.toAlgHom x) := by
  induction x using MvPolynomial.induction_on with
  | C r => simp only [← MvPolynomial.algebraMap_eq, AlgHom.map_algebraMap]
  | add x y hx hy => simp only [map_add, hx, hy]
  | mul_X p i hp => simp only [map_mul, hp, toAlgHom_X, comp_val]; rfl

variable {T} [CommRing T] [Algebra R T] [Algebra S T] [IsScalarTower R S T]

/-- Given families of generators `X ⊆ T` over `S` and `Y ⊆ S` over `R`,
there is a map of generators `R[Y] → R[X, Y]`. -/
@[simps]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a08976f024735c867be48366f52b72c3bcd4aec7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
