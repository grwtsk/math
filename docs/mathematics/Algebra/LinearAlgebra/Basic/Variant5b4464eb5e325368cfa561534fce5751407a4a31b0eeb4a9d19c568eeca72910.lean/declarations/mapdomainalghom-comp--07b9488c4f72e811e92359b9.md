# mapDomainAlgHom_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a79ba61d486939ea9070cfc44894b0417212565a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 544,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b4464eb5e325368cfa561534fce5751407a4a31b0eeb4a9d19c568eeca72910.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1381f2a0-8e86-86bd-54b6-b87bd55460dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:435036f2-c39f-0713-1e02-e1e38e30112f",
  "kind": "lemma",
  "lexical_name": "mapDomainAlgHom_comp",
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
  "slug": "mapdomainalghom-comp--07b9488c4f72e811e92359b9",
  "source": {
    "blob": "a79ba61d486939ea9070cfc44894b0417212565a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 544,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5b4464eb5e325368cfa561534fce5751407a4a31b0eeb4a9d19c568eeca72910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07b9488c4f72e811e92359b9ecf0c6ec941881b980dfdae5996beaef4cb95fb0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5b4464eb5e325368cfa561534fce5751407a4a31b0eeb4a9d19c568eeca72910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:435036f2-c39f-0713-1e02-e1e38e30112f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapDomainAlgHom_comp (k A) {G₁ G₂ G₃} [CommSemiring k] [Semiring A] [Algebra k A]
    [AddMonoid G₁] [AddMonoid G₂] [AddMonoid G₃] (f : G₁ →+ G₂) (g : G₂ →+ G₃) :
    mapDomainAlgHom k A (g.comp f) = (mapDomainAlgHom k A g).comp (mapDomainAlgHom k A f) := by
  ext; simp [mapDomain_comp]

variable (k A)
variable [CommSemiring k] [AddMonoid G] [AddMonoid H] [Semiring A] [Algebra k A]


/-- If `e : G ≃* H` is a multiplicative equivalence between two monoids, then
`AddMonoidAlgebra.domCongr e` is an algebra equivalence between their monoid algebras. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5b4464eb5e325368cfa561534fce5751407a4a31b0eeb4a9d19c568eeca72910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5b4464eb5e325368cfa561534fce5751407a4a31b0eeb4a9d19c568eeca72910.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a79ba61d486939ea9070cfc44894b0417212565a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
