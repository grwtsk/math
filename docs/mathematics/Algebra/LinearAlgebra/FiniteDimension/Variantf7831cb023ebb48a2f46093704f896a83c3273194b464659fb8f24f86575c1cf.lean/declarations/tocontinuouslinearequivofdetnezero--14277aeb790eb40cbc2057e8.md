# toContinuousLinearEquivOfDetNeZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7cf5dc98983e06db62fed5d9b13521433d6756bf71c3f04c81fbd7dd800a0cf",
  "kind": "def",
  "lexical_name": "toContinuousLinearEquivOfDetNeZero",
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
  "slug": "tocontinuouslinearequivofdetnezero--14277aeb790eb40cbc2057e8",
  "source": {
    "blob": "ecdb3f4c4524b36a028a8fa3ceb08ce79c69a35a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 468,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14277aeb790eb40cbc2057e8b38450fc43f7b63d67490d9808a1fc9a4c734b8c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7cf5dc98983e06db62fed5d9b13521433d6756bf71c3f04c81fbd7dd800a0cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toContinuousLinearEquivOfDetNeZero (f : E →L[𝕜] E) (hf : f.det ≠ 0) : E ≃L[𝕜] E :=
  ((f : E →ₗ[𝕜] E).equivOfDetNeZero hf).toContinuousLinearEquiv

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecdb3f4c4524b36a028a8fa3ceb08ce79c69a35a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
