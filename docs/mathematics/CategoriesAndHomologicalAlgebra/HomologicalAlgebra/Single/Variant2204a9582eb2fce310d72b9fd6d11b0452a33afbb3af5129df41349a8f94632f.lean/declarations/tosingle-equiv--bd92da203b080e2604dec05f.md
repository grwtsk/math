# toSingle₀Equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67585ff4a1bbadd180e3eec453b72a02b3541ce729a5508b2c087c8a115ed35f",
  "kind": "def",
  "lexical_name": "toSingle₀Equiv",
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
  "slug": "tosingle-equiv--bd92da203b080e2604dec05f",
  "source": {
    "blob": "a5c911476e379216ae40c9966a3403ae80830c8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 302,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant2204a9582eb2fce310d72b9fd6d11b0452a33afbb3af5129df41349a8f94632f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd92da203b080e2604dec05f5e2406162d31614b8d353601b474d3107ba71c43",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant2204a9582eb2fce310d72b9fd6d11b0452a33afbb3af5129df41349a8f94632f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67585ff4a1bbadd180e3eec453b72a02b3541ce729a5508b2c087c8a115ed35f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toSingle₀Equiv (C : CochainComplex V ℕ) (X : V) :
    (C ⟶ (single₀ V).obj X) ≃ (C.X 0 ⟶ X) where
  toFun f := f.f 0
  invFun f := HomologicalComplex.mkHomToSingle f (fun i hi => by simp at hi)
  left_inv := by aesop_cat
  right_inv := by aesop_cat

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant2204a9582eb2fce310d72b9fd6d11b0452a33afbb3af5129df41349a8f94632f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant2204a9582eb2fce310d72b9fd6d11b0452a33afbb3af5129df41349a8f94632f.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5c911476e379216ae40c9966a3403ae80830c8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
