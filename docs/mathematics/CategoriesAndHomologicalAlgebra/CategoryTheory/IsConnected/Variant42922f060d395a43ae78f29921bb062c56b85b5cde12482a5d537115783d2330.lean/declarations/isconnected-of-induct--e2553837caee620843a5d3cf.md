# IsConnected.of_induct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7a9975f17808292aaf2906998768e663144672f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/42922f060d395a43ae78f29921bb062c56b85b5cde12482a5d537115783d2330.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25111a29-f1bc-7e87-2662-cac7dd1cbbad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29575b42-85ed-fe3a-f11e-6e7f1d1f29a6",
  "kind": "theorem",
  "lexical_name": "IsConnected.of_induct",
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
  "slug": "isconnected-of-induct--e2553837caee620843a5d3cf",
  "source": {
    "blob": "d7a9975f17808292aaf2906998768e663144672f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 190,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant42922f060d395a43ae78f29921bb062c56b85b5cde12482a5d537115783d2330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2553837caee620843a5d3cfd5fbc4398f65bb93387e8b5ba7ae38a33fe3129c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant42922f060d395a43ae78f29921bb062c56b85b5cde12482a5d537115783d2330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29575b42-85ed-fe3a-f11e-6e7f1d1f29a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsConnected.of_induct {j₀ : J}
    (h : ∀ p : Set J, j₀ ∈ p → (∀ {j₁ j₂ : J} (_ : j₁ ⟶ j₂), j₁ ∈ p ↔ j₂ ∈ p) → ∀ j : J, j ∈ p) :
    IsConnected J :=
  have := Nonempty.intro j₀
  IsConnected.of_constant_of_preserves_morphisms fun {α} F a => by
    have w := h { j | F j = F j₀ } rfl (fun {j₁} {j₂} f => by
      change F j₁ = F j₀ ↔ F j₂ = F j₀
      simp [a f])
    intro j j'
    rw [w j, w j']

/-- Lifting the universe level of morphisms and objects preserves connectedness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant42922f060d395a43ae78f29921bb062c56b85b5cde12482a5d537115783d2330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant42922f060d395a43ae78f29921bb062c56b85b5cde12482a5d537115783d2330.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7a9975f17808292aaf2906998768e663144672f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
