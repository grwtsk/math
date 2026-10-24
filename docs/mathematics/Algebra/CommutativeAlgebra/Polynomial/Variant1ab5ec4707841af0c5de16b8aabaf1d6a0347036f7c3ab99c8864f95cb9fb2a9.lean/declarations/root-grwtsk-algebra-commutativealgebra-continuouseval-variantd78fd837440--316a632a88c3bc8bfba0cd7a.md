# _root_.GRWTSK.Algebra.CommutativeAlgebra.ContinuousEval.Variantd78fd83744050fc71be1b8649b5bfab2f61fd66ac486c2a9a355ce921b4e610d.isClosedMap_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6de6660-ea26-e160-2299-9c54588f8439",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.ContinuousEval.Variantd78fd83744050fc71be1b8649b5bfab2f61fd66ac486c2a9a355ce921b4e610d.isClosedMap_pow",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-continuouseval-variantd78fd837440--316a632a88c3bc8bfba0cd7a",
  "source": {
    "blob": "d280d3877c59ce86b662c08b43fa555c96ed4922",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 161,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant1ab5ec4707841af0c5de16b8aabaf1d6a0347036f7c3ab99c8864f95cb9fb2a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:316a632a88c3bc8bfba0cd7ae5fe0536938243bc739feced5a5b44e92a0e7a4d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant1ab5ec4707841af0c5de16b8aabaf1d6a0347036f7c3ab99c8864f95cb9fb2a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6de6660-ea26-e160-2299-9c54588f8439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.ContinuousEval.Variantd78fd83744050fc71be1b8649b5bfab2f61fd66ac486c2a9a355ce921b4e610d.isClosedMap_pow [ProperSpace R] (n : ℕ) : IsClosedMap fun x : R ↦ x ^ n := by
  simpa [eval_X_pow] using (X ^ n).isClosedMap_eval

section Roots

open Polynomial NNReal

variable {F K : Type*} [CommRing F] [NormedField K]

/-- Nonzero polynomials are nonzero away from a codiscrete set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant1ab5ec4707841af0c5de16b8aabaf1d6a0347036f7c3ab99c8864f95cb9fb2a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant1ab5ec4707841af0c5de16b8aabaf1d6a0347036f7c3ab99c8864f95cb9fb2a9.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d280d3877c59ce86b662c08b43fa555c96ed4922` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
