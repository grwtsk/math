# Matrix.IsFiniteCartan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9aa393cfea809ed4769dfb70e8c98561629601830cbc93d488d4e4c3cd89170",
  "kind": "structure",
  "lexical_name": "Matrix.IsFiniteCartan",
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
  "slug": "matrix-isfinitecartan--c5c16e7747d8998a8527b814",
  "source": {
    "blob": "fae84a1e3d51428d2e6d08c9951f4d474a686680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 463,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb73e66c2cf630d7220f5e5bd027ca56a2add4a7a84a770a3338ab294c002ba77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5c16e7747d8998a8527b81435cf16b19d7399774c9bc08f7629a8e82ac8624d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantb73e66c2cf630d7220f5e5bd027ca56a2add4a7a84a770a3338ab294c002ba77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9aa393cfea809ed4769dfb70e8c98561629601830cbc93d488d4e4c3cd89170`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Matrix.IsFiniteCartan {ι : Type*} [Fintype ι] [DecidableEq ι]
    (M : Matrix ι ι ℤ) : Prop where
  diag : ∀ i, M i i = 2
  offDiag_nonpos : ∀ i j, i ≠ j → M i j ≤ 0
  zero_comm : ∀ i j, M i j = 0 ↔ M j i = 0
  exists_posDef : ∃ d : ι → ℤ, (∀ i, 0 < d i) ∧ (diagonal d * M).PosDef

namespace Matrix.IsFiniteCartan

variable {ι : Type*} [Fintype ι] [DecidableEq ι] {M : Matrix ι ι ℤ} (hM : M.IsFiniteCartan)
include hM

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantb73e66c2cf630d7220f5e5bd027ca56a2add4a7a84a770a3338ab294c002ba77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantb73e66c2cf630d7220f5e5bd027ca56a2add4a7a84a770a3338ab294c002ba77.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fae84a1e3d51428d2e6d08c9951f4d474a686680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
