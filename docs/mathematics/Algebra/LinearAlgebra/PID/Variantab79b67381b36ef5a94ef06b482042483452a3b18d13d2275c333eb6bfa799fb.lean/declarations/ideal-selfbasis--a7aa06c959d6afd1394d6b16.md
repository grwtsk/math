# Ideal.selfBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc456b7a0d1166423711692a3a404333d017c6ca5a578f26755c2d88d860dcd1",
  "kind": "def",
  "lexical_name": "Ideal.selfBasis",
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
  "slug": "ideal-selfbasis--a7aa06c959d6afd1394d6b16",
  "source": {
    "blob": "393373167928c6a90d2d42a212fc7b66a0e98b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 732,
    "line": 722,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7aa06c959d6afd1394d6b16d93a15909e9a7c64adb87fa34030177356f8245a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc456b7a0d1166423711692a3a404333d017c6ca5a578f26755c2d88d860dcd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 722–732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Ideal.selfBasis (b : Basis ι R S) (I : Ideal S) (hI : I ≠ ⊥) : Basis ι R I :=
  (Ideal.exists_smith_normal_form b I hI).choose_spec.choose_spec.choose

/-- If `S` a finite-dimensional ring extension of a PID `R` which is free as an `R`-module,
then any nonzero `S`-ideal `I` is free as an `R`-submodule of `S`, and we can
find a basis for `S` and `I` such that the inclusion map is a square diagonal
matrix; these are the entries of the diagonal matrix. See :
* `Ideal.ringBasis` for the basis on `S`,
* `Ideal.selfBasis` for the basis on `I`,
* `Ideal.selfBasis_def` for the proof that the inclusion map forms a square diagonal matrix.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean#L722).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `393373167928c6a90d2d42a212fc7b66a0e98b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
