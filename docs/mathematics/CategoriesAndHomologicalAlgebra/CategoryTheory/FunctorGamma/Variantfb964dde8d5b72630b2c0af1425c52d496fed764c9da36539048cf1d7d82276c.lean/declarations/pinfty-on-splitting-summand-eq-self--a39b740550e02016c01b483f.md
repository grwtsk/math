# PInfty_on_Γ₀_splitting_summand_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c97a363cb05fb590c5bebbe6516853faab1bf17",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 327,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:546cde9d-c014-663c-c095-dc9b063a47d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f10c58a9-feef-99fd-92c6-3e1ca9f21544",
  "kind": "theorem",
  "lexical_name": "PInfty_on_Γ₀_splitting_summand_eq_self",
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
  "slug": "pinfty-on-splitting-summand-eq-self--a39b740550e02016c01b483f",
  "source": {
    "blob": "9c97a363cb05fb590c5bebbe6516853faab1bf17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 327,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a39b740550e02016c01b483f16a50b785b0b8c9365bbe54ed9d537f5581371f1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f10c58a9-feef-99fd-92c6-3e1ca9f21544`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PInfty_on_Γ₀_splitting_summand_eq_self (K : ChainComplex C ℕ) {n : ℕ} :
    ((Γ₀.splitting K).cofan _).inj (Splitting.IndexSet.id (op ⦋n⦌)) ≫
      (PInfty : K[Γ₀.obj K] ⟶ _).f n =
      ((Γ₀.splitting K).cofan _).inj (Splitting.IndexSet.id (op ⦋n⦌)) := by
  rw [PInfty_f]
  rcases n with _|n
  · simpa only [P_f_0_eq] using comp_id _
  · exact (HigherFacesVanish.on_Γ₀_summand_id K n).comp_P_eq_self

end DoldKan

end AlgebraicTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c97a363cb05fb590c5bebbe6516853faab1bf17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
