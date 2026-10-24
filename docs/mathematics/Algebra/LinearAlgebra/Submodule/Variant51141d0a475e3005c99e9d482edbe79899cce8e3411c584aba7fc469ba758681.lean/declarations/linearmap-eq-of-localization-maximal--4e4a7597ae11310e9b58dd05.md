# LinearMap.eq_of_localization_maximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbb5afd8-5b93-154d-6635-6765c01ab008",
  "kind": "theorem",
  "lexical_name": "LinearMap.eq_of_localization_maximal",
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
  "slug": "linearmap-eq-of-localization-maximal--4e4a7597ae11310e9b58dd05",
  "source": {
    "blob": "76df3388f8655f065bd62a5141cce1a4308d08d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 103,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e4a7597ae11310e9b58dd05906ed0e0ef84aa35e8e678caec8933cf2a9d9ba2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbb5afd8-5b93-154d-6635-6765c01ab008`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.eq_of_localization_maximal (g g' : M →ₗ[R] M₁)
    (h : ∀ (P : Ideal R) [P.IsMaximal],
      IsLocalizedModule.map P.primeCompl (f P) (f₁ P) g =
      IsLocalizedModule.map P.primeCompl (f P) (f₁ P) g') :
    g = g' :=
  ext fun x ↦ Module.eq_of_localization_maximal _ f₁ _ _ fun P _ ↦ by
    simpa only [IsLocalizedModule.map_apply] using DFunLike.congr_fun (h P) (f P x)

include f in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76df3388f8655f065bd62a5141cce1a4308d08d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
