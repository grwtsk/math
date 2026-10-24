# copy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a54492f2df5025099eadcf4c0209a2435c7fd792ac8367f88ae6da8a4419dfec",
  "kind": "def",
  "lexical_name": "copy",
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
  "slug": "copy--380aabcee9692edbff117de8",
  "source": {
    "blob": "3b85472eef291fd83e327c73f53b3986ace107ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 238,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant07f841967d674baf73153a4fe7378e9f2dfe274e1c9298de1a7eadf3e6cb6270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:380aabcee9692edbff117de8dd830b7d374610d28896d0e82037e90e3f712047",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant07f841967d674baf73153a4fe7378e9f2dfe274e1c9298de1a7eadf3e6cb6270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a54492f2df5025099eadcf4c0209a2435c7fd792ac8367f88ae6da8a4419dfec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def copy {K' H' : C} (eK : K' ≅ h.K) (eH : H' ≅ h.H) : S.LeftHomologyData where
  K := K'
  H := H'
  i := eK.hom ≫ h.i
  π := eK.hom ≫ h.π ≫ eH.inv
  wi := by rw [assoc, h.wi, comp_zero]
  hi := IsKernel.isoKernel _ _ h.hi eK (by simp)
  wπ := by simp [IsKernel.isoKernel]
  hπ := IsColimit.equivOfNatIsoOfIso
    (parallelPair.ext (Iso.refl S.X₁) eK.symm (by simp [IsKernel.isoKernel]) (by simp)) _ _
    (Cocone.ext (by exact eH.symm) (by rintro (_ | _) <;> simp [IsKernel.isoKernel])) h.hπ

end LeftHomologyData

/-- A short complex `S` has left homology when there exists a `S.LeftHomologyData` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant07f841967d674baf73153a4fe7378e9f2dfe274e1c9298de1a7eadf3e6cb6270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant07f841967d674baf73153a4fe7378e9f2dfe274e1c9298de1a7eadf3e6cb6270.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b85472eef291fd83e327c73f53b3986ace107ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
