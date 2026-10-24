# ceil_le_two_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10956124-189d-ea09-ae03-10e4517e4be6",
  "kind": "lemma",
  "lexical_name": "ceil_le_two_mul",
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
  "slug": "ceil-le-two-mul--a9e51cdd308c11970efa0bad",
  "source": {
    "blob": "12f73179a4935c72d0b6148c9d59409247aaa7ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 95,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Semifield/Variantfa5365f99f3395807e76cc231c92fa3678184f448a23e7b0461022f0159d1318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9e51cdd308c11970efa0bad9bda96072c8159d90dfaf863c6c51b2037b176ba",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Semifield/Variantfa5365f99f3395807e76cc231c92fa3678184f448a23e7b0461022f0159d1318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10956124-189d-ea09-ae03-10e4517e4be6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ceil_le_two_mul (ha : 2⁻¹ ≤ a) : ⌈a⌉₊ ≤ 2 * a :=
  ceil_le_mul one_lt_two (by norm_num at ha ⊢; exact ha)

end LinearOrderedField

end Nat

namespace Mathlib.Meta.NormNum

open Qq

/-!
### `norm_num` extension for `Nat.floor`
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Semifield/Variantfa5365f99f3395807e76cc231c92fa3678184f448a23e7b0461022f0159d1318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Semifield/Variantfa5365f99f3395807e76cc231c92fa3678184f448a23e7b0461022f0159d1318.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12f73179a4935c72d0b6148c9d59409247aaa7ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
