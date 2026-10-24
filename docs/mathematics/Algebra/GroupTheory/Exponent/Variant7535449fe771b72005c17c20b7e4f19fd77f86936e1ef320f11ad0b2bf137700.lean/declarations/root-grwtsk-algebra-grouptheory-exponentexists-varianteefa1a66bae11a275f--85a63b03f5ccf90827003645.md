# _root_.GRWTSK.Algebra.GroupTheory.ExponentExists.Varianteefa1a66bae11a275f016ef6d2aad6fe4e81e0ad5a00456946d7f67898f8d60f.Commute.exists_orderOf_eq_lcm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a62445b-4af3-3636-1b18-401e4870b1d1",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.ExponentExists.Varianteefa1a66bae11a275f016ef6d2aad6fe4e81e0ad5a00456946d7f67898f8d60f.Commute.exists_orderOf_eq_lcm",
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
  "slug": "root-grwtsk-algebra-grouptheory-exponentexists-varianteefa1a66bae11a275f--85a63b03f5ccf90827003645",
  "source": {
    "blob": "150eeadb58b5a30e718cfbe9af487892f8c50d27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 302,
    "path": "GRWTSK/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85a63b03f5ccf90827003645890eb05b83a19141a878aee6f2aefdb3228d937e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a62445b-4af3-3636-1b18-401e4870b1d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.ExponentExists.Varianteefa1a66bae11a275f016ef6d2aad6fe4e81e0ad5a00456946d7f67898f8d60f.Commute.exists_orderOf_eq_lcm {x y : G} (h : Commute x y) :
    ∃ z ∈ closure {x, y}, orderOf z = Nat.lcm (orderOf x) (orderOf y) := by
  by_cases hx : orderOf x = 0 <;> by_cases hy : orderOf y = 0
  · exact ⟨x, subset_closure (by simp), by simp [hx]⟩
  · exact ⟨x, subset_closure (by simp), by simp [hx]⟩
  · exact ⟨y, subset_closure (by simp), by simp [hy]⟩
  · exact ⟨_, mul_mem (pow_mem (subset_closure (by simp)) _) (pow_mem (subset_closure (by simp)) _),
      h.orderOf_mul_pow_eq_lcm hx hy⟩

/-- A nontrivial monoid has prime exponent `p` if and only if every non-identity element has
order `p`. -/
@[to_additive /-- A nontrivial additive monoid has prime exponent `p` if and only if every
non-identity element has order `p`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150eeadb58b5a30e718cfbe9af487892f8c50d27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
