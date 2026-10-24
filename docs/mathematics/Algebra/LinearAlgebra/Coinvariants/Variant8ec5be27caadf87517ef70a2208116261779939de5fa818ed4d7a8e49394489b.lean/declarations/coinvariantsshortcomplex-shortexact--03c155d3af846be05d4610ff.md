# coinvariantsShortComplex_shortExact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1aef6b4af16a9d151e17d60d24257249ca5fdf2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8ec5be27caadf87517ef70a2208116261779939de5fa818ed4d7a8e49394489b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f18c42c4-f98e-6d55-a193-b9b4b54aab44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a5b27ab-1a90-94aa-df2d-e860939999ba",
  "kind": "lemma",
  "lexical_name": "coinvariantsShortComplex_shortExact",
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
  "slug": "coinvariantsshortcomplex-shortexact--03c155d3af846be05d4610ff",
  "source": {
    "blob": "1aef6b4af16a9d151e17d60d24257249ca5fdf2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 335,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coinvariants/Variant8ec5be27caadf87517ef70a2208116261779939de5fa818ed4d7a8e49394489b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03c155d3af846be05d4610ff05fbcf33b59cdd78e21244eb199a2ee7cc9cd6f1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Coinvariants/Variant8ec5be27caadf87517ef70a2208116261779939de5fa818ed4d7a8e49394489b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a5b27ab-1a90-94aa-df2d-e860939999ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coinvariantsShortComplex_shortExact : (coinvariantsShortComplex.{w} A S).ShortExact where
  exact := (forget₂ (Rep.{w} k G) (ModuleCat k)).reflects_exact_of_faithful _ <|
    (ShortComplex.moduleCat_exact_iff _).2
    fun x hx => ⟨(⟨x, (Submodule.Quotient.mk_eq_zero _).1 hx⟩ : Representation.Coinvariants.ker <|
      A.ρ.comp S.subtype), rfl⟩
  mono_f := (Rep.mono_iff_injective _).2 fun _ _ h => Subtype.ext h
  epi_g := (Rep.epi_iff_surjective _).2 <| Submodule.mkQ_surjective _

end

variable (k G) [Monoid G] (A B : Rep.{w} k G)

/-- The functor sending a representation to its coinvariants. -/
@[implicit_reducible, simps! obj_carrier map_hom]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Coinvariants/Variant8ec5be27caadf87517ef70a2208116261779939de5fa818ed4d7a8e49394489b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coinvariants/Variant8ec5be27caadf87517ef70a2208116261779939de5fa818ed4d7a8e49394489b.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aef6b4af16a9d151e17d60d24257249ca5fdf2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
