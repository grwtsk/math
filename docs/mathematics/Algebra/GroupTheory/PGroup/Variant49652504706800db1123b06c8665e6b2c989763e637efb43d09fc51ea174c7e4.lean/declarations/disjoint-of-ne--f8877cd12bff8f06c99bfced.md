# disjoint_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a94d534642d53121cd507a93c59834f950c767bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 351,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0893759-d1a2-fed0-76e1-91e717dd8d69",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a221af7-d283-a427-fcff-ae916fd08a8f",
  "kind": "theorem",
  "lexical_name": "disjoint_of_ne",
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
  "slug": "disjoint-of-ne--f8877cd12bff8f06c99bfced",
  "source": {
    "blob": "a94d534642d53121cd507a93c59834f950c767bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 351,
    "path": "GRWTSK/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8877cd12bff8f06c99bfceddd6ad32d2cfa94a43e8d7ed7b09aa0c7274aecc3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a221af7-d283-a427-fcff-ae916fd08a8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_of_ne (p₁ p₂ : ℕ) [hp₁ : Fact p₁.Prime] [hp₂ : Fact p₂.Prime] (hne : p₁ ≠ p₂)
    (H₁ H₂ : Subgroup G) (hH₁ : IsPGroup p₁ H₁) (hH₂ : IsPGroup p₂ H₂) : Disjoint H₁ H₂ := by
  rw [Subgroup.disjoint_def]
  intro x hx₁ hx₂
  obtain ⟨n₁, hn₁⟩ := iff_orderOf.mp hH₁ ⟨x, hx₁⟩
  obtain ⟨n₂, hn₂⟩ := iff_orderOf.mp hH₂ ⟨x, hx₂⟩
  rw [← orderOf_subgroup, Subgroup.coe_mk] at hn₁ hn₂
  have : p₁ ^ n₁ = p₂ ^ n₂ := by rw [← hn₁, ← hn₂]
  rcases n₁.eq_zero_or_pos with (rfl | hn₁)
  · simpa using hn₁
  · exact absurd (eq_of_prime_pow_eq hp₁.out.prime hp₂.out.prime hn₁ this) hne
#align is_p_group.disjoint_of_ne IsPGroup.disjoint_of_ne

section P2comm

variable [Fintype G] [Fact p.Prime] {n : ℕ} (hGpn : card G = p ^ n)

open Subgroup

/-- The cardinality of the `center` of a `p`-group is `p ^ k` where `k` is positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a94d534642d53121cd507a93c59834f950c767bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
