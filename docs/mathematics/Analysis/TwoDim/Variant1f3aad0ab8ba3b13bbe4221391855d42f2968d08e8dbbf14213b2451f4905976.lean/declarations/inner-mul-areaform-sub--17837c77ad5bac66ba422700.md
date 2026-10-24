# inner_mul_areaForm_sub'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e93594459a7c90848da7218b4b567acd48d19682",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac632453-4490-0e9e-a921-e5b8b448e6dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e13a0a7-dd00-cf70-9dfa-371c063f18c3",
  "kind": "theorem",
  "lexical_name": "inner_mul_areaForm_sub'",
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
  "slug": "inner-mul-areaform-sub--17837c77ad5bac66ba422700",
  "source": {
    "blob": "e93594459a7c90848da7218b4b567acd48d19682",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 365,
    "path": "GRWTSK/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17837c77ad5bac66ba422700bf7f4340961c77a715a50a4385bc550b19c2b2e2",
  "verification": {
    "reference": "docs/verification/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e13a0a7-dd00-cf70-9dfa-371c063f18c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_mul_areaForm_sub' (a x : E) : ⟪a, x⟫ • ω a - ω a x • innerₛₗ ℝ a = ‖a‖ ^ 2 • ω x := by
  by_cases ha : a = 0
  · simp [ha]
  apply (o.basisRightAngleRotation a ha).ext
  intro i
  fin_cases i
  · simp [real_inner_self_eq_norm_sq, mul_comm, o.areaForm_swap a x]
  · simp [real_inner_self_eq_norm_sq, mul_comm, real_inner_comm]

/-- For vectors `a x y : E`, the identity `⟪a, x⟫ * ω a y - ω a x * ⟪a, y⟫ = ‖a‖ ^ 2 * ω x y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e93594459a7c90848da7218b4b567acd48d19682` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
