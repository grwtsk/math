# PSL.iSup_lineStab_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a0f719983184f576a1d62d5904b1a823ae9c092",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98449af0db78127fc5a5560d2fd0e4f9170f5345bda7d831ea62549ac87baa10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2addaf4-db55-989b-e9b1-ca7786580e48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b8b55a8-6124-7045-0586-db82c8e585a4",
  "kind": "lemma",
  "lexical_name": "PSL.iSup_lineStab_eq_top",
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
  "slug": "psl-isup-linestab-eq-top--1c2df8c618abe83037f83e5a",
  "source": {
    "blob": "5a0f719983184f576a1d62d5904b1a823ae9c092",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 59,
    "path": "GRWTSK/Algebra/LinearAlgebra/PSL2/Variant98449af0db78127fc5a5560d2fd0e4f9170f5345bda7d831ea62549ac87baa10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c2df8c618abe83037f83e5a8e7ab386ef22663771a513decc089ae31996fa5c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PSL2/Variant98449af0db78127fc5a5560d2fd0e4f9170f5345bda7d831ea62549ac87baa10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b8b55a8-6124-7045-0586-db82c8e585a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PSL.iSup_lineStab_eq_top :
    (⨆ p : ℙ F (Fin 2 → F), lineStab p.submodule) = (⊤ : Subgroup SL(2, F)) := by
  refine le_antisymm le_top (SL2Gen.SL_card_two_lineStab_sup_eq_top (F := F) ▸
    sup_le ?_ ?_)
  <;> rw [← Projectivization.submodule_mk (K := F) _ (Pi.single_ne_zero_iff.2 one_ne_zero)]
  <;> exact le_iSup_iff.2 fun b a ↦ a _

/-- The Iwasawa generator property: when `Fintype.card ι = 2`, the supremum of the
`iwasawaT` subgroups equals all of `PSL`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PSL2/Variant98449af0db78127fc5a5560d2fd0e4f9170f5345bda7d831ea62549ac87baa10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PSL2/Variant98449af0db78127fc5a5560d2fd0e4f9170f5345bda7d831ea62549ac87baa10.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a0f719983184f576a1d62d5904b1a823ae9c092` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
