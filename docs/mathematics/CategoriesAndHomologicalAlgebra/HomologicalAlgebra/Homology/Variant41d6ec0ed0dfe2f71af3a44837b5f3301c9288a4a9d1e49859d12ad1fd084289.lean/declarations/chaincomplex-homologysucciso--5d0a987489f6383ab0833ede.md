# ChainComplex.homologySuccIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:257866eea1df410bc30475053d47c146892d4c8a949cd16e9f44a6572465bbe4",
  "kind": "def",
  "lexical_name": "ChainComplex.homologySuccIso",
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
  "slug": "chaincomplex-homologysucciso--5d0a987489f6383ab0833ede",
  "source": {
    "blob": "b22e4e18ade5de3e43e61479d8bf5ab205f79761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 173,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant41d6ec0ed0dfe2f71af3a44837b5f3301c9288a4a9d1e49859d12ad1fd084289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d0a987489f6383ab0833ede296e0107a112a990c4e66df95a37307c943d8a53",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant41d6ec0ed0dfe2f71af3a44837b5f3301c9288a4a9d1e49859d12ad1fd084289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:257866eea1df410bc30475053d47c146892d4c8a949cd16e9f44a6572465bbe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ChainComplex.homologySuccIso [HasKernels V] [HasImages V] [HasCokernels V]
    (C : ChainComplex V ℕ) (n : ℕ) :
    C.homology (n + 1) ≅ homology (C.d (n + 2) (n + 1)) (C.d (n + 1) n) (C.d_comp_d _ _ _) :=
  C.homologyIso rfl rfl
#align chain_complex.homology_succ_iso ChainComplex.homologySuccIso

/-- The `n + 1`th cohomology of a cochain complex (as kernel of 'the differential from `Cₙ₊₁`'
modulo the image of 'the differential to `Cₙ₊₁`') is isomorphic to the kernel of `d : Cₙ₊₁ → Cₙ₊₂`
modulo the image of `d : Cₙ → Cₙ₊₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant41d6ec0ed0dfe2f71af3a44837b5f3301c9288a4a9d1e49859d12ad1fd084289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant41d6ec0ed0dfe2f71af3a44837b5f3301c9288a4a9d1e49859d12ad1fd084289.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22e4e18ade5de3e43e61479d8bf5ab205f79761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
