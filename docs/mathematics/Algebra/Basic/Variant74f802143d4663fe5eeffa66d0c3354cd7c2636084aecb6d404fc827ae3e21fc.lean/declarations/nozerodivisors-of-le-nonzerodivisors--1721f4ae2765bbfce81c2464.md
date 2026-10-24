# noZeroDivisors_of_le_nonZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62eaa62c115f533d629570cd23f1ba7db05ad97f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7cb21f9-655a-f6ba-8f32-cce94fb632e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a73d444-2344-8041-fc8b-489c14c4b9de",
  "kind": "theorem",
  "lexical_name": "noZeroDivisors_of_le_nonZeroDivisors",
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
  "slug": "nozerodivisors-of-le-nonzerodivisors--1721f4ae2765bbfce81c2464",
  "source": {
    "blob": "62eaa62c115f533d629570cd23f1ba7db05ad97f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1254,
    "line": 1235,
    "path": "GRWTSK/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1721f4ae2765bbfce81c2464c5f5b3b61cb53bb3f2a3dee399cabb87142a7fac",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a73d444-2344-8041-fc8b-489c14c4b9de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1235–1254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noZeroDivisors_of_le_nonZeroDivisors [Algebra A S] {M : Submonoid A} [IsLocalization M S]
    (hM : M ≤ nonZeroDivisors A) : NoZeroDivisors S :=
  {
    eq_zero_or_eq_zero_of_mul_eq_zero := by
      intro z w h
      cases' surj M z with x hx
      cases' surj M w with y hy
      have :
        z * w * algebraMap A S y.2 * algebraMap A S x.2 = algebraMap A S x.1 * algebraMap A S y.1 :=
        by rw [mul_assoc z, hy, ← hx]; ring
      rw [h, zero_mul, zero_mul, ← (algebraMap A S).map_mul] at this
      cases' eq_zero_or_eq_zero_of_mul_eq_zero ((to_map_eq_zero_iff S hM).mp this.symm) with H H
      · exact Or.inl (eq_zero_of_fst_eq_zero hx H)
      · exact Or.inr (eq_zero_of_fst_eq_zero hy H) }
#align is_localization.no_zero_divisors_of_le_non_zero_divisors IsLocalization.noZeroDivisors_of_le_nonZeroDivisors

/-- A `CommRing` `S` which is the localization of an integral domain `R` at a subset of
non-zero elements is an integral domain.
See note [reducible non-instances]. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean#L1235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62eaa62c115f533d629570cd23f1ba7db05ad97f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
