# ofEpiOfIsIsoOfMono_g'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b2fc958-12cd-e3bd-60f2-dbc13b398f60",
  "kind": "lemma",
  "lexical_name": "ofEpiOfIsIsoOfMono_g'",
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
  "slug": "ofepiofisisoofmono-g--34bcfa407a79506b9301a6c9",
  "source": {
    "blob": "858ffdc8be975b60766d728ba97444fe77ed9244",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1037,
    "line": 1025,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant5a61ae5b7229bde50e402c57e961b6eb3ed2ddacc2d903f2c7b95dea6939d3c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34bcfa407a79506b9301a6c9871b313d5361ab645c3fb8b543338c3623f90667",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant5a61ae5b7229bde50e402c57e961b6eb3ed2ddacc2d903f2c7b95dea6939d3c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b2fc958-12cd-e3bd-60f2-dbc13b398f60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1025–1037.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma ofEpiOfIsIsoOfMono_g' : (ofEpiOfIsIsoOfMono φ h).g' = h.g' ≫ φ.τ₃ := by
  simp [ofEpiOfIsIsoOfMono, opMap]

end

section

variable (φ : S₁ ⟶ S₂) (h : RightHomologyData S₂) [Epi φ.τ₁] [IsIso φ.τ₂] [Mono φ.τ₃]

/-- If `φ : S₁ ⟶ S₂` is a morphism of short complexes such that `φ.τ₁` is epi, `φ.τ₂` is an iso
and `φ.τ₃` is mono, then a right homology data for `S₂` induces a right homology data for `S₁` with
the same `Q` and `H` fields. This is obtained by dualising `LeftHomologyData.ofEpiOfIsIsoOfMono`.
The inverse construction is `ofEpiOfIsIsoOfMono`.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant5a61ae5b7229bde50e402c57e961b6eb3ed2ddacc2d903f2c7b95dea6939d3c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant5a61ae5b7229bde50e402c57e961b6eb3ed2ddacc2d903f2c7b95dea6939d3c9.lean#L1025).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `858ffdc8be975b60766d728ba97444fe77ed9244` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
