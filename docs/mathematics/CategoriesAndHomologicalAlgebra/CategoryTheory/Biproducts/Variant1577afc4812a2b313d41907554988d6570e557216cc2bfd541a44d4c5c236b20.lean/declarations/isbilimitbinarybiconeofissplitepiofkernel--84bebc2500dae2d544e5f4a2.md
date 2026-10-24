# isBilimitBinaryBiconeOfIsSplitEpiOfKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:267ab38c7dbe146425af97df112c0d3ad48e0e58d590b8410ecac52b806ec4d8",
  "kind": "def",
  "lexical_name": "isBilimitBinaryBiconeOfIsSplitEpiOfKernel",
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
  "slug": "isbilimitbinarybiconeofissplitepiofkernel--84bebc2500dae2d544e5f4a2",
  "source": {
    "blob": "c6b3d98779a650aac31b033d2178498e51fa9481",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 621,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant1577afc4812a2b313d41907554988d6570e557216cc2bfd541a44d4c5c236b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84bebc2500dae2d544e5f4a23057d05eb196788b52828505f9911003fc3f8dc3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant1577afc4812a2b313d41907554988d6570e557216cc2bfd541a44d4c5c236b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:267ab38c7dbe146425af97df112c0d3ad48e0e58d590b8410ecac52b806ec4d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isBilimitBinaryBiconeOfIsSplitEpiOfKernel {X Y : C} {f : X ⟶ Y} [IsSplitEpi f]
    {c : KernelFork f} (i : IsLimit c) : (binaryBiconeOfIsSplitEpiOfKernel i).IsBilimit :=
  BinaryBicone.isBilimitOfKernelInl _ <| i.ofIsoLimit <| Fork.ext (Iso.refl _) (by simp)

end

section

variable {X Y : C} (f g : X ⟶ Y)

/-- The existence of binary biproducts implies that there is at most one preadditive structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant1577afc4812a2b313d41907554988d6570e557216cc2bfd541a44d4c5c236b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant1577afc4812a2b313d41907554988d6570e557216cc2bfd541a44d4c5c236b20.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6b3d98779a650aac31b033d2178498e51fa9481` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
