# aeval_algebraMap_eq_zero_iff_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eff35b99-2d08-4e71-34f1-a771a0e90067",
  "kind": "theorem",
  "lexical_name": "aeval_algebraMap_eq_zero_iff_of_injective",
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
  "slug": "aeval-algebramap-eq-zero-iff-of-injective--9050f952f7cbe494f9ec19e7",
  "source": {
    "blob": "1d69afdfc8799e96f6feb3315a740a544e9d8182",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 71,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Tower/Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9050f952f7cbe494f9ec19e72cbfaac5d19a4620616f715d328992bc5a2d9f8a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Tower/Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eff35b99-2d08-4e71-34f1-a771a0e90067`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_algebraMap_eq_zero_iff_of_injective {x : A} {p : R[X]}
    (h : Function.Injective (algebraMap A B)) : aeval (algebraMap A B x) p = 0 ↔ aeval x p = 0 := by
  rw [aeval_algebraMap_apply, ← (algebraMap A B).map_zero, h.eq_iff]

end CommSemiring

end Polynomial

namespace Subalgebra

open Polynomial

section CommSemiring

variable {R A} [CommSemiring R] [CommSemiring A] [Algebra R A]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Tower/Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Tower/Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d69afdfc8799e96f6feb3315a740a544e9d8182` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
