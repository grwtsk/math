# nnnorm_sum_eq_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c8f3030-43e7-3866-e832-9c947f26d374",
  "kind": "lemma",
  "lexical_name": "nnnorm_sum_eq_sup",
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
  "slug": "nnnorm-sum-eq-sup--2750978a46767b38e7cbac82",
  "source": {
    "blob": "92a52eebebb7e6c39b50d92c515b485475ed6881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 231,
    "path": "GRWTSK/Algebra/GelfandDuality/Variant6da652588853c6dc899e3e4c235a239cde7ed3cca311dc18a883da6168e8c12e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2750978a46767b38e7cbac824d628d18998a825892109c7f11ebc2547e3fe9e0",
  "verification": {
    "reference": "docs/verification/Algebra/GelfandDuality/Variant6da652588853c6dc899e3e4c235a239cde7ed3cca311dc18a883da6168e8c12e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c8f3030-43e7-3866-e832-9c947f26d374`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nnnorm_sum_eq_sup {ι : Type*} {f : ι → A} (s : Finset ι) (h0 : Pairwise ((· * · = 0) on f)) :
    ‖∑ i ∈ s, f i‖₊ = s.sup (‖f ·‖₊) := by
  classical
  induction s using Finset.induction with
  | empty => simp
  | insert j s hj ih =>
    suffices f j * ∑ i ∈ s, f i = 0 by simp_all [nnnorm_add_eq_max this]
    simpa [Finset.mul_sum] using Finset.sum_eq_zero fun i hi ↦ h0 (by grind)

end CommCStarAlgebra

section NonUnital

variable {A : Type*} [NonUnitalCStarAlgebra A] {a b : A}

namespace IsStarNormal

open scoped IsMulCommutative in
open NonUnitalStarAlgebra NonUnitalStarSubalgebra in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GelfandDuality/Variant6da652588853c6dc899e3e4c235a239cde7ed3cca311dc18a883da6168e8c12e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GelfandDuality/Variant6da652588853c6dc899e3e4c235a239cde7ed3cca311dc18a883da6168e8c12e.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92a52eebebb7e6c39b50d92c515b485475ed6881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
