# card_subtype_not_diag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:262466d5-1425-4e37-97f0-f896a1be56de",
  "kind": "theorem",
  "lexical_name": "card_subtype_not_diag",
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
  "slug": "card-subtype-not-diag--5d092ac2f04d7342ef158128",
  "source": {
    "blob": "27297e9a4ad563e0a5c8940d9dd09f7761c43f8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 172,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d092ac2f04d7342ef158128302ad10f6ee486d7bf162a5a42436815fb3f4af7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:262466d5-1425-4e37-97f0-f896a1be56de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_subtype_not_diag [Fintype α] :
    card { a : Sym2 α // ¬a.IsDiag } = (card α).choose 2 := by
  convert card_image_offDiag (univ : Finset α)
  rw [← filter_image_mk_not_isDiag, Fintype.card_of_subtype]
  rintro x
  rw [mem_filter, univ_product_univ, mem_image]
  obtain ⟨a, ha⟩ := Quot.exists_rep x
  exact and_iff_right ⟨a, mem_univ _, ha⟩

/-- Type **stars and bars** for the case `n = 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27297e9a4ad563e0a5c8940d9dd09f7761c43f8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
