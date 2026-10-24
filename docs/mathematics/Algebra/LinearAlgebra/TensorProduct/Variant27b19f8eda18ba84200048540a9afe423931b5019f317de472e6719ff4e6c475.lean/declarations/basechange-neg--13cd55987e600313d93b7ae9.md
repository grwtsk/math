# baseChange_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9a6400b-4169-2436-2c2c-418350c84b7b",
  "kind": "theorem",
  "lexical_name": "baseChange_neg",
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
  "slug": "basechange-neg--13cd55987e600313d93b7ae9",
  "source": {
    "blob": "fca833014ac94836ce6d4e75788c5938524b3587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 137,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant27b19f8eda18ba84200048540a9afe423931b5019f317de472e6719ff4e6c475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13cd55987e600313d93b7ae9a87cdcd88ea39eb787670f123e5771c29b6067bd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant27b19f8eda18ba84200048540a9afe423931b5019f317de472e6719ff4e6c475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9a6400b-4169-2436-2c2c-418350c84b7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem baseChange_neg : (-f).baseChange A = -f.baseChange A := by
  ext
  -- porting note: `tmul_neg` wasn't needed in mathlib3
  simp [baseChange_eq_ltensor, tmul_neg]
#align linear_map.base_change_neg LinearMap.baseChange_neg

end Ring

end LinearMap

namespace Algebra

namespace TensorProduct

section Semiring

variable {R : Type u} [CommSemiring R]

variable {A : Type v₁} [Semiring A] [Algebra R A]

variable {B : Type v₂} [Semiring B] [Algebra R B]

/-!
### The `R`-algebra structure on `A ⊗[R] B`
-/


/-- (Implementation detail)
The multiplication map on `A ⊗[R] B`,
for a fixed pure tensor in the first argument,
as an `R`-linear map.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant27b19f8eda18ba84200048540a9afe423931b5019f317de472e6719ff4e6c475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant27b19f8eda18ba84200048540a9afe423931b5019f317de472e6719ff4e6c475.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fca833014ac94836ce6d4e75788c5938524b3587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
