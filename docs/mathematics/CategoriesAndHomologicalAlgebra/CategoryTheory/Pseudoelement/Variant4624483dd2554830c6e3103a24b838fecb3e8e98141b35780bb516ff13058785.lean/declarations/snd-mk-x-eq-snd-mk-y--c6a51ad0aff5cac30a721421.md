# snd_mk'_x_eq_snd_mk'_y

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89d30969fc7f55f1af6e03e17eb4fd9fdde5d4fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22550da5-dfd9-dc4a-9118-7a2153c2c065",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a9916bd-ec1e-6562-8004-3517ac84d97f",
  "kind": "theorem",
  "lexical_name": "snd_mk'_x_eq_snd_mk'_y",
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
  "slug": "snd-mk-x-eq-snd-mk-y--c6a51ad0aff5cac30a721421",
  "source": {
    "blob": "89d30969fc7f55f1af6e03e17eb4fd9fdde5d4fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 117,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6a51ad0aff5cac30a721421f65e3d7fc472348aecebf81030997e2aa2b8a624",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a9916bd-ec1e-6562-8004-3517ac84d97f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snd_mk'_x_eq_snd_mk'_y :
    (biprod.snd : of ℤ ℚ ⊞ of ℤ ℚ ⟶ _) ⟦x⟧ = (biprod.snd : of ℤ ℚ ⊞ of ℤ ℚ ⟶ _) ⟦y⟧ :=
  Quotient.eq.2 snd_x_pseudo_eq_snd_y
#align counterexample.snd_mk_x_eq_snd_mk_y Counterexample.snd_mk'_x_eq_snd_mk'_y

-- Porting note: needs explicit type ascription `: Quotient <| Pseudoelement.setoid _`
--               for some reason the setoid instance isn't picked up automatically
--               despite the local instance ~20 lines up
/-- `⟦x⟧ ≠ ⟦y⟧`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89d30969fc7f55f1af6e03e17eb4fd9fdde5d4fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
