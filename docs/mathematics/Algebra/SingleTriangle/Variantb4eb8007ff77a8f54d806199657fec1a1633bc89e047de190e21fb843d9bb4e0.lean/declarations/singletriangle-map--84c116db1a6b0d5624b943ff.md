# singleTriangle.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8b36bd3bcd60bb3e3a00ab32e4a87c48e1475ff79cb4f2962dd3741309d7c9c",
  "kind": "def",
  "lexical_name": "singleTriangle.map",
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
  "slug": "singletriangle-map--84c116db1a6b0d5624b943ff",
  "source": {
    "blob": "c7ceac4ff4b67052fdcf436e1579c51aa14a6b16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 80,
    "path": "GRWTSK/Algebra/SingleTriangle/Variantb4eb8007ff77a8f54d806199657fec1a1633bc89e047de190e21fb843d9bb4e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84c116db1a6b0d5624b943ff8d9bc1d6496620d6118d6e1ced8ad6025836df54",
  "verification": {
    "reference": "docs/verification/Algebra/SingleTriangle/Variantb4eb8007ff77a8f54d806199657fec1a1633bc89e047de190e21fb843d9bb4e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8b36bd3bcd60bb3e3a00ab32e4a87c48e1475ff79cb4f2962dd3741309d7c9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def singleTriangle.map : h₁.singleTriangle ⟶ h₂.singleTriangle where
  hom₁ := (singleFunctor C 0).map f.τ₁
  hom₂ := (singleFunctor C 0).map f.τ₂
  hom₃ := (singleFunctor C 0).map f.τ₃
  comm₁ := by simp [← Functor.map_comp, f.comm₁₂]
  comm₂ := by simp [← Functor.map_comp, f.comm₂₃]
  comm₃ := by
    simpa [singleδ] using! ((triangleOfSES.map (h₁.map_of_exact _) (h₂.map_of_exact _))
      ((HomologicalComplex.single C (.up ℤ) 0).mapShortComplex.map f)).comm₃

end ShortExact

end ShortComplex

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SingleTriangle/Variantb4eb8007ff77a8f54d806199657fec1a1633bc89e047de190e21fb843d9bb4e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SingleTriangle/Variantb4eb8007ff77a8f54d806199657fec1a1633bc89e047de190e21fb843d9bb4e0.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7ceac4ff4b67052fdcf436e1579c51aa14a6b16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
