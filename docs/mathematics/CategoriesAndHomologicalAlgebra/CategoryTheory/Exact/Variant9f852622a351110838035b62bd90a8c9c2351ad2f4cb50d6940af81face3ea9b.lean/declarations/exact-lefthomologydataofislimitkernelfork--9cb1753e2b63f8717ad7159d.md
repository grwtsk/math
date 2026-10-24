# Exact.leftHomologyDataOfIsLimitKernelFork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8427f2595c009747e994e94c00cc517949804cc3f2ccfe52899f46dacaa0eeb2",
  "kind": "def",
  "lexical_name": "Exact.leftHomologyDataOfIsLimitKernelFork",
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
  "slug": "exact-lefthomologydataofislimitkernelfork--9cb1753e2b63f8717ad7159d",
  "source": {
    "blob": "957ac1a8f210a77a7f6a4cfda55f0c8ad76be0fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 347,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cb1753e2b63f8717ad7159d3e4eb3875a16ff57551311282549bbb3461710e2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8427f2595c009747e994e94c00cc517949804cc3f2ccfe52899f46dacaa0eeb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Exact.leftHomologyDataOfIsLimitKernelFork
    (hS : S.Exact) [HasZeroObject C] (kf : KernelFork S.g) (hkf : IsLimit kf) :
    S.LeftHomologyData where
  K := kf.pt
  H := 0
  i := kf.ι
  π := 0
  wi := kf.condition
  hi := IsLimit.ofIsoLimit hkf (Fork.ext (Iso.refl _) (by simp))
  wπ := comp_zero
  hπ := CokernelCofork.IsColimit.ofEpiOfIsZero _ (by
    have := hS.hasHomology
    refine ((MorphismProperty.epimorphisms C).arrow_mk_iso_iff ?_).1
      hS.epi_toCycles
    refine Arrow.isoMk (Iso.refl _)
      (IsLimit.conePointUniqueUpToIso S.cyclesIsKernel hkf) ?_
    apply Fork.IsLimit.hom_ext hkf
    simp [IsLimit.conePointUniqueUpToIso]) (isZero_zero C)

/-- Given an exact short complex `S` and a colimit cokernel cofork `cc` for `S.f`, this is the
right homology data for `S` with `Q := cc.pt` and `H := 0`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `957ac1a8f210a77a7f6a4cfda55f0c8ad76be0fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
