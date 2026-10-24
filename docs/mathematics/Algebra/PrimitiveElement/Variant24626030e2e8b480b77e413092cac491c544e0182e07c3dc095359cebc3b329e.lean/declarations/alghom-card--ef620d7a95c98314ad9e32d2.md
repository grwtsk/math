# AlgHom.card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eefb10b31c3bb4e8e1db409eb22440dcadecd038",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61fac7be-74c9-8b5c-3880-6ebf959885fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9358f54a-0bee-edff-aa81-e4366608f241",
  "kind": "theorem",
  "lexical_name": "AlgHom.card",
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
  "slug": "alghom-card--ef620d7a95c98314ad9e32d2",
  "source": {
    "blob": "eefb10b31c3bb4e8e1db409eb22440dcadecd038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 220,
    "path": "GRWTSK/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef620d7a95c98314ad9e32d2354a857caf6adce7ebb9ef8fc467cfdc38c969b4",
  "verification": {
    "reference": "docs/verification/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9358f54a-0bee-edff-aa81-e4366608f241`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AlgHom.card (F E K : Type*) [Field F] [Field E] [Field K] [IsAlgClosed K] [Algebra F E]
    [FiniteDimensional F E] [IsSeparable F E] [Algebra F K] :
    Fintype.card (E →ₐ[F] K) = finrank F E := by
  convert (AlgHom.card_of_powerBasis (L := K) (Field.powerBasisOfFiniteOfSeparable F E)
    (IsSeparable.separable _ _) (IsAlgClosed.splits_codomain _)).trans (PowerBasis.finrank _).symm
#align alg_hom.card AlgHom.card
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eefb10b31c3bb4e8e1db409eb22440dcadecd038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
