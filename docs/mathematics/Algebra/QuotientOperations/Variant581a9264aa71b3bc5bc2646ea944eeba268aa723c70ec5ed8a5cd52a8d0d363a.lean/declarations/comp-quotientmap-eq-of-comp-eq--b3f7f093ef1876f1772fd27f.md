# comp_quotientMap_eq_of_comp_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e37043b08ba29f8c19d8a890d3e3667ce700414a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 415,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b00a1f67-f2f0-7c94-1397-c2ef4ed25849",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ebe8ad7-aa7c-0378-4d8b-1ce3b8a798af",
  "kind": "theorem",
  "lexical_name": "comp_quotientMap_eq_of_comp_eq",
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
  "slug": "comp-quotientmap-eq-of-comp-eq--b3f7f093ef1876f1772fd27f",
  "source": {
    "blob": "e37043b08ba29f8c19d8a890d3e3667ce700414a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 415,
    "path": "GRWTSK/Algebra/QuotientOperations/Variant581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3f7f093ef1876f1772fd27fd5aa55902f2cdba436a3f5eb38dd6153c914707b",
  "verification": {
    "reference": "docs/verification/Algebra/QuotientOperations/Variant581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ebe8ad7-aa7c-0378-4d8b-1ce3b8a798af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_quotientMap_eq_of_comp_eq {R' S' : Type*} [CommRing R'] [CommRing S'] {f : R →+* S}
    {f' : R' →+* S'} {g : R →+* R'} {g' : S →+* S'} (hfg : f'.comp g = g'.comp f) (I : Ideal S') :
    -- Porting note: was losing track of I
    let leq := le_of_eq (_root_.trans (comap_comap (I := I) f g') (hfg ▸ comap_comap (I := I) g f'))
    (quotientMap I g' le_rfl).comp (quotientMap (I.comap g') f le_rfl) =
    (quotientMap I f' le_rfl).comp (quotientMap (I.comap f') g leq) := by
  refine RingHom.ext fun a => ?_
  obtain ⟨r, rfl⟩ := Quotient.mk_surjective a
  simp only [RingHom.comp_apply, quotientMap_mk]
  exact congr_arg (Ideal.Quotient.mk I) (_root_.trans (g'.comp_apply f r).symm
    (hfg ▸ f'.comp_apply g r))
#align ideal.comp_quotient_map_eq_of_comp_eq Ideal.comp_quotientMap_eq_of_comp_eq

/-- The algebra hom `A/I →+* B/J` induced by an algebra hom `f : A →ₐ[R₁] B` with `I ≤ f⁻¹(J)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuotientOperations/Variant581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuotientOperations/Variant581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e37043b08ba29f8c19d8a890d3e3667ce700414a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
