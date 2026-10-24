# basisKaehlerOfIsCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9796afa4d6dfebd10f80ecc2c5c5100a2cbdb0e37af6018fc689a9bb42887f68",
  "kind": "def",
  "lexical_name": "basisKaehlerOfIsCompl",
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
  "slug": "basiskaehlerofiscompl--afecb2f057139ce7095de1aa",
  "source": {
    "blob": "5ccb44a1b832c83e42c7f87d86e291096fcf471a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 207,
    "path": "GRWTSK/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afecb2f057139ce7095de1aa1ca87e1000178155e274a4cc3c9b47a45f5d3297",
  "verification": {
    "reference": "docs/verification/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9796afa4d6dfebd10f80ecc2c5c5100a2cbdb0e37af6018fc689a9bb42887f68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def basisKaehlerOfIsCompl {κ : Type*} {f : κ → P.vars}
    (hf : Function.Injective f) (hcompl : IsCompl (Set.range f) (Set.range P.map)) :
    Basis κ S (Ω[S⁄R]) := by
  apply P.cotangentSpaceBasis.ofSplitExact (sectionCotangent_comp P)
    Extension.exact_cotangentComplex_toKaehler Extension.toKaehler_surjective hf (b := P.map)
  · intro i
    apply sectionCotangent_zero_of_notMem_range _ _
    simp [← hcompl.compl_eq]
  · simp only [sectionCotangent, LinearMap.coe_comp, Function.comp_assoc, LinearEquiv.coe_coe]
    apply LinearIndependent.map' _ _ P.cotangentEquiv.symm.ker
    convert (Pi.basisFun S P.rels).linearIndependent
    classical
    ext i j
    simp only [Function.comp_apply, Basis.repr_self, Finsupp.linearEquivFunOnFinite_apply,
      Pi.basisFun_apply, Finsupp.single_apply_left P.map_inj, Finsupp.single_eq_pi_single]
    simp [Finsupp.single_eq_pi_single]
  · exact hcompl.2

/-- Given a submersive presentation of `S` as `R`-algebra, the images of `dxᵢ`
for `i` in the complement of `P.rels` in `P.vars` form a basis of `Ω[S⁄R]`. -/
@[stacks 00T7 "(2)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ccb44a1b832c83e42c7f87d86e291096fcf471a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
