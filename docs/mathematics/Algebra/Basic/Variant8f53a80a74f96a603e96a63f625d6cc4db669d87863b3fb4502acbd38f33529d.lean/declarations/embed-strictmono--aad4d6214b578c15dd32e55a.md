# embed_strictMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4039b8556d8511892728b54bb257ff71e8b823b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:104d642d-cab6-e45b-e7dd-9166d939961b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:898dbc1c-bc2a-f0eb-91ff-a2908dda7ac4",
  "kind": "lemma",
  "lexical_name": "embed_strictMono",
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
  "slug": "embed-strictmono--aad4d6214b578c15dd32e55a",
  "source": {
    "blob": "a4039b8556d8511892728b54bb257ff71e8b823b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1152,
    "line": 1120,
    "path": "GRWTSK/Algebra/Basic/Variant8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aad4d6214b578c15dd32e55a093d264302554e92affde50d1c8dfb613e552854",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:898dbc1c-bc2a-f0eb-91ff-a2908dda7ac4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1120–1152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma embed_strictMono [v.Compatible] : StrictMono (embed v) := by
  intro a b h
  obtain ⟨a, r, rfl⟩ := exists_valuation_div_valuation_eq a
  obtain ⟨b, s, rfl⟩ := exists_valuation_div_valuation_eq b
  rw [← embedding_strictMono.lt_iff_lt]
  simp only [map_div₀]
  rw [div_lt_div_iff₀] at h ⊢
  any_goals simp only [zero_lt_iff, ne_eq, Valuation.apply_posSubmonoid_ne_zero, not_false_eq_true]
  · rw [← map_mul, ← map_mul, (isEquiv (valuation R) v).lt_iff_lt] at h
    simp only [embed, coe_mk, ZeroHom.coe_mk, lift_valuation,
      OneMemClass.coe_one, map_one, div_one]
    rw [embedding_restrict₀ a, embedding_restrict₀ b, embedding_restrict₀ r.1,
      embedding_restrict₀ s.1]
    simpa using h
  · simp [restrict₀_apply, embed]
  · simp [restrict₀_apply, embed]

/--
When we have `h : w.IsEquiv v`, the image group (with zero) of `v` is
isomorphic to that of `w` via `h.orderMonoidIso`. Then the following diagram is commutative:
```
              ValueGroup₀ w
                ∧      |
       embed w /       |
              /        |
ValueGroupWithZero R   | h.orderMonoidIso
              \        |
       embed v \       |
                ∨      ∨
              ValueGroup₀ v
```
-/
@[simp]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.lean#L1120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4039b8556d8511892728b54bb257ff71e8b823b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
