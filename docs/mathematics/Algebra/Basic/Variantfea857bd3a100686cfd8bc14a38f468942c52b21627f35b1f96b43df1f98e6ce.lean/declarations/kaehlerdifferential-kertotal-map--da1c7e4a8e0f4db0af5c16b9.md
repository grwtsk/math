# KaehlerDifferential.kerTotal_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4861ef74136948550d0ab4656c7b667851555876",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 644,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56b07b9a-0d7a-9d34-1a24-f6165de26a03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa62b397-f2a8-a39a-cbac-424f72980517",
  "kind": "theorem",
  "lexical_name": "KaehlerDifferential.kerTotal_map",
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
  "slug": "kaehlerdifferential-kertotal-map--da1c7e4a8e0f4db0af5c16b9",
  "source": {
    "blob": "4861ef74136948550d0ab4656c7b667851555876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 670,
    "line": 644,
    "path": "GRWTSK/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da1c7e4a8e0f4db0af5c16b9492e7f1e744985d9d138358c7312625322398ae2",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa62b397-f2a8-a39a-cbac-424f72980517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KaehlerDifferential.kerTotal_map [Algebra R B] [IsScalarTower R A B] [IsScalarTower R S B]
    (h : Function.Surjective (algebraMap A B)) :
    (KaehlerDifferential.kerTotal R A).map finsupp_map ⊔
        Submodule.span A (Set.range fun x : S => .single (algebraMap S B x) (1 : B)) =
      (KaehlerDifferential.kerTotal S B).restrictScalars _ := by
  rw [KaehlerDifferential.kerTotal, Submodule.map_span, KaehlerDifferential.kerTotal,
    Submodule.restrictScalars_span _ _ h]
  simp_rw [Set.image_union, Submodule.span_union, ← Set.image_univ, Set.image_image, Set.image_univ,
    map_sub, map_add]
  simp only [LinearMap.comp_apply, Finsupp.lmapDomain_apply, Finsupp.mapDomain_single,
    Finsupp.mapRange.linearMap_apply, Finsupp.mapRange_single, Algebra.linearMap_apply,
    map_one, map_add, map_mul]
  simp_rw [sup_assoc, ← (h.prodMap h).range_comp]
  congr!
  -- Porting note: new
  simp_rw [← IsScalarTower.algebraMap_apply R A B]
  rw [sup_eq_right]
  apply Submodule.span_mono
  simp_rw [IsScalarTower.algebraMap_apply R S B]
  exact Set.range_comp_subset_range (algebraMap R S)
    fun x => Finsupp.single (algebraMap S B x) (1 : B)

/--
This is a special case of `kerTotal_map` where `R = S`.
The kernel of the presentation `⊕ₓ B dx ↠ Ω_{B/R}` is spanned by the image of the
kernel of `⊕ₓ A dx ↠ Ω_{A/R}` and all `da` with `a : A`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4861ef74136948550d0ab4656c7b667851555876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
