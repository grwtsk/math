# kernelIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82a3e7c770a3f09c6c8bfd22de1f06cd722459684e63083502c9ce18374e03f6",
  "kind": "def",
  "lexical_name": "kernelIsLimit",
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
  "slug": "kernelislimit--cf63470b68e743c9dc5c6da7",
  "source": {
    "blob": "cd4adcdc84139b943c0438ba46843c7885f445fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 36,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Kernels/Variant2bd298ff31ae8da144fba52fb6f9f931984076415c6a222fbaff2b26d5e49f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf63470b68e743c9dc5c6da761933543596e3b9f57f7c442d3643ec6f3522adb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Kernels/Variant2bd298ff31ae8da144fba52fb6f9f931984076415c6a222fbaff2b26d5e49f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82a3e7c770a3f09c6c8bfd22de1f06cd722459684e63083502c9ce18374e03f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kernelIsLimit : IsLimit <| kernelCone f :=
  Fork.IsLimit.mk _
    (fun s => ofHom <| s.ι.hom.codRestrict _ fun c => mem_ker.mpr <|
      ConcreteCategory.congr_hom s.condition c)
    (fun _ => by rfl)
    (fun _ _ h => ext fun x => Subtype.ext_iff_val.mpr <| ConcreteCategory.congr_hom h x)

/-- The cokernel cocone induced by the projection onto the quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Kernels/Variant2bd298ff31ae8da144fba52fb6f9f931984076415c6a222fbaff2b26d5e49f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Kernels/Variant2bd298ff31ae8da144fba52fb6f9f931984076415c6a222fbaff2b26d5e49f94.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd4adcdc84139b943c0438ba46843c7885f445fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
