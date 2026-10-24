# incl_isIdealMorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ad3931d2343e472abed14022abdd8cbff5662fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 480,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7af1a3fa53b6337299479675161decd7b56f046f7670cf86926f2cb2a9676ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34b4a282-5a4c-6a0e-1584-1002a8f0c8c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cab611f3-230d-04a1-5369-86078c52c670",
  "kind": "theorem",
  "lexical_name": "incl_isIdealMorphism",
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
  "slug": "incl-isidealmorphism--85ecb682be352f2c8843efca",
  "source": {
    "blob": "3ad3931d2343e472abed14022abdd8cbff5662fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 480,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ideal/Variantc7af1a3fa53b6337299479675161decd7b56f046f7670cf86926f2cb2a9676ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85ecb682be352f2c8843efca61c66b9539107b6ef51538d8449cd6c2eb460b1e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ideal/Variantc7af1a3fa53b6337299479675161decd7b56f046f7670cf86926f2cb2a9676ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cab611f3-230d-04a1-5369-86078c52c670`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem incl_isIdealMorphism : I.incl.IsIdealMorphism := by
  rw [I.incl.isIdealMorphism_def, incl_idealRange]
  exact (I : LieSubalgebra R L).incl_range.symm

end LieIdeal

end LieSubmoduleMapAndComap

section TopEquiv

variable (R : Type u) (L : Type v)
variable [CommRing R] [LieRing L]
variable (M : Type*) [AddCommGroup M] [Module R M] [LieRingModule L M]
variable {R L}
variable [LieAlgebra R L] [LieModule R L M]

/-- The natural equivalence between the 'top' Lie ideal and the enclosing Lie algebra.
This is the Lie ideal version of `Submodule.topEquiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ideal/Variantc7af1a3fa53b6337299479675161decd7b56f046f7670cf86926f2cb2a9676ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ideal/Variantc7af1a3fa53b6337299479675161decd7b56f046f7670cf86926f2cb2a9676ef.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ad3931d2343e472abed14022abdd8cbff5662fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
