# HigherFacesVanish.on_Γ₀_summand_id

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
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae3ab463-fbf8-2f01-89c1-0d6ca1bbe2e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86acddc3-7546-bf2c-52fd-34e89f026279",
  "kind": "theorem",
  "lexical_name": "HigherFacesVanish.on_Γ₀_summand_id",
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
  "slug": "higherfacesvanish-on-summand-id--3cdc4ed604d882812ccc0cfe",
  "source": {
    "blob": "9c97a363cb05fb590c5bebbe6516853faab1bf17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 315,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cdc4ed604d882812ccc0cfe88f42eff047afa04259128b122264db50328fc76",
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

Occurrence: `result:86acddc3-7546-bf2c-52fd-34e89f026279`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HigherFacesVanish.on_Γ₀_summand_id (K : ChainComplex C ℕ) (n : ℕ) :
    @HigherFacesVanish C _ _ (Γ₀.obj K) _ n (n + 1)
      (((Γ₀.splitting K).cofan _).inj (Splitting.IndexSet.id (op ⦋n + 1⦌))) := by
  intro j _
  have eq := Γ₀.Obj.mapMono_on_summand_id K (SimplexCategory.δ j.succ)
  rw [Γ₀.Obj.Termwise.mapMono_eq_zero K, zero_comp] at eq; rotate_left
  · intro h
    exact (Nat.succ_ne_self n) (congr_arg SimplexCategory.len h)
  · exact fun h => Fin.succ_ne_zero j (by simpa only [Isδ₀.iff] using h)
  exact eq

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c97a363cb05fb590c5bebbe6516853faab1bf17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
