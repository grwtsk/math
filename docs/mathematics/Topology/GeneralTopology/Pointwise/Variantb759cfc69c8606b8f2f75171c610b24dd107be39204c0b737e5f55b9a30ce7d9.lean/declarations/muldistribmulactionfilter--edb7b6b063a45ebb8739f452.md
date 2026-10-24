# mulDistribMulActionFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc6a33161603d46e255d1e2f35fda87ac3c922e345660124e7944e5447605ec1",
  "kind": "def",
  "lexical_name": "mulDistribMulActionFilter",
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
  "slug": "muldistribmulactionfilter--edb7b6b063a45ebb8739f452",
  "source": {
    "blob": "63014fb466cb6b48331eecaedf7d9840b6b427fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1076,
    "line": 1060,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edb7b6b063a45ebb8739f45232ac782278ecd5748e1afe82f2bfe042c9017ec5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc6a33161603d46e255d1e2f35fda87ac3c922e345660124e7944e5447605ec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1060–1076.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def mulDistribMulActionFilter
    [Monoid α] [Monoid β] [MulDistribMulAction α β] : MulDistribMulAction α (Set β) where
  smul_mul _ _ _ := image_image2_distrib <| smul_mul' _
  smul_one _ := image_singleton.trans <| by rw [smul_one, singleton_one]

scoped[Pointwise]
  attribute [instance] Filter.distribMulActionFilter Filter.mulDistribMulActionFilter

section SMulWithZero

variable [Zero α] [Zero β] [SMulWithZero α β] {f : Filter α} {g : Filter β}

/-!
Note that we have neither `SMulWithZero α (Filter β)` nor `SMulWithZero (Filter α) (Filter β)`
because `0 * ⊥ ≠ 0`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean#L1060).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63014fb466cb6b48331eecaedf7d9840b6b427fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
