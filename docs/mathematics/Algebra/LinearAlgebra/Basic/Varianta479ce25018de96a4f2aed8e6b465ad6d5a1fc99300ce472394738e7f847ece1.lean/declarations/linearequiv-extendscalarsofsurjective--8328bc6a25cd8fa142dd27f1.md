# LinearEquiv.extendScalarsOfSurjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbc76f2e17e3fe889267df5c73b77487d262c9583cc51f0e780597e43618a9fa",
  "kind": "def",
  "lexical_name": "LinearEquiv.extendScalarsOfSurjective",
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
  "slug": "linearequiv-extendscalarsofsurjective--8328bc6a25cd8fa142dd27f1",
  "source": {
    "blob": "958fd36cf4f9d010a3afd68a40b5e9de2841f72f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 560,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta479ce25018de96a4f2aed8e6b465ad6d5a1fc99300ce472394738e7f847ece1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8328bc6a25cd8fa142dd27f1da45b049323a77f27c4562d862794b3a250a8f64",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta479ce25018de96a4f2aed8e6b465ad6d5a1fc99300ce472394738e7f847ece1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbc76f2e17e3fe889267df5c73b77487d262c9583cc51f0e780597e43618a9fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 560–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LinearEquiv.extendScalarsOfSurjective (h : Surjective (algebraMap R S))
    (f : M ≃ₗ[R] N) : M ≃ₗ[S] N where
  __ := f
  map_smul' r x := by obtain ⟨r, rfl⟩ := h r; simp

variable (h : Surjective (algebraMap R S))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta479ce25018de96a4f2aed8e6b465ad6d5a1fc99300ce472394738e7f847ece1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta479ce25018de96a4f2aed8e6b465ad6d5a1fc99300ce472394738e7f847ece1.lean#L560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `958fd36cf4f9d010a3afd68a40b5e9de2841f72f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
