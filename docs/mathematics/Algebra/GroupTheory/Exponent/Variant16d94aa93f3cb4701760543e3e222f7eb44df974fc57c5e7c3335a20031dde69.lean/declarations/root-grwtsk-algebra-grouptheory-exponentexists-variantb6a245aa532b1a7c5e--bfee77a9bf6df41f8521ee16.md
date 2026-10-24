# _root_.GRWTSK.Algebra.GroupTheory.ExponentExists.Variantb6a245aa532b1a7c5e04cb6f52ed02f778a3649d8effa883afff2e0303999c38.Commute.exists_orderOf_eq_lcm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f68dd8f2-6bd8-5d95-d0bc-202fbc157ca6",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.ExponentExists.Variantb6a245aa532b1a7c5e04cb6f52ed02f778a3649d8effa883afff2e0303999c38.Commute.exists_orderOf_eq_lcm",
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
  "slug": "root-grwtsk-algebra-grouptheory-exponentexists-variantb6a245aa532b1a7c5e--bfee77a9bf6df41f8521ee16",
  "source": {
    "blob": "097441933a8fead7390ba136d1052efd8a511b7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 283,
    "path": "GRWTSK/Algebra/GroupTheory/Exponent/Variant16d94aa93f3cb4701760543e3e222f7eb44df974fc57c5e7c3335a20031dde69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfee77a9bf6df41f8521ee16c00c224056ea00ffc70e83deb8c23297ed18cd0d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Exponent/Variant16d94aa93f3cb4701760543e3e222f7eb44df974fc57c5e7c3335a20031dde69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f68dd8f2-6bd8-5d95-d0bc-202fbc157ca6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.ExponentExists.Variantb6a245aa532b1a7c5e04cb6f52ed02f778a3649d8effa883afff2e0303999c38.Commute.exists_orderOf_eq_lcm {x y : G} (h : Commute x y) :
    ∃ z ∈ closure {x, y}, orderOf z = Nat.lcm (orderOf x) (orderOf y) := by
  by_cases hx : orderOf x = 0 <;> by_cases hy : orderOf y = 0
  · exact ⟨x, subset_closure (by simp), by simp [hx]⟩
  · exact ⟨x, subset_closure (by simp), by simp [hx]⟩
  · exact ⟨y, subset_closure (by simp), by simp [hy]⟩
  · exact ⟨_, mul_mem (pow_mem (subset_closure (by simp)) _) (pow_mem (subset_closure (by simp)) _),
      h.orderOf_mul_pow_eq_lcm hx hy⟩

/-- A nontrivial monoid has prime exponent `p` if and only if every non-identity element has
order `p`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Exponent/Variant16d94aa93f3cb4701760543e3e222f7eb44df974fc57c5e7c3335a20031dde69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Exponent/Variant16d94aa93f3cb4701760543e3e222f7eb44df974fc57c5e7c3335a20031dde69.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `097441933a8fead7390ba136d1052efd8a511b7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
