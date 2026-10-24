# single₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e538d1e2f240259edf3de81937c9b7d739e9f56ceb3c3e40d5fb63f42ac39b1",
  "kind": "def",
  "lexical_name": "single₀",
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
  "slug": "single--771ba8ff48883c73c1b2e2af",
  "source": {
    "blob": "35a086edfe9a0b39417f234e4ac289de2a5313fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 327,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variantf2c61f41d31ca7c2754b44db74299067fdca9c21b62fe35e86d7bff1f43866ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:771ba8ff48883c73c1b2e2af1f89e95caca5064b7195c9b0aeb71f8bc130b5e6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variantf2c61f41d31ca7c2754b44db74299067fdca9c21b62fe35e86d7bff1f43866ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e538d1e2f240259edf3de81937c9b7d739e9f56ceb3c3e40d5fb63f42ac39b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def single₀ : V ⥤ CochainComplex V ℕ where
  obj X :=
    { X := fun n =>
        match n with
        | 0 => X
        | _ + 1 => 0
      d := fun i j => 0 }
  map f :=
    { f := fun n =>
        match n with
        | 0 => f
        | n + 1 => 0 }
  map_id X := by
    ext (_|_)
    · rfl
    · simp
  map_comp f g := by
    ext (_|_)
    · rfl
    · simp
#align cochain_complex.single₀ CochainComplex.single₀

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variantf2c61f41d31ca7c2754b44db74299067fdca9c21b62fe35e86d7bff1f43866ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variantf2c61f41d31ca7c2754b44db74299067fdca9c21b62fe35e86d7bff1f43866ff.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35a086edfe9a0b39417f234e4ac289de2a5313fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
