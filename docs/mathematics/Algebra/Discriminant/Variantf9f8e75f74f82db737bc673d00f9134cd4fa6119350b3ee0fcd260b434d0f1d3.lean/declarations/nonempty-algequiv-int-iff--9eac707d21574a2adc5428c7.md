# nonempty_algEquiv_int_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1652ce7fd6d1bc1f1af34b22622d719e709a0a11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c67513a-dc73-16fd-c9d5-8177d034254a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe1779c0-123a-3305-f786-99b1491f75c1",
  "kind": "theorem",
  "lexical_name": "nonempty_algEquiv_int_iff",
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
  "slug": "nonempty-algequiv-int-iff--9eac707d21574a2adc5428c7",
  "source": {
    "blob": "1652ce7fd6d1bc1f1af34b22622d719e709a0a11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 153,
    "path": "GRWTSK/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eac707d21574a2adc5428c748c18335948f9fd7ca354b43a9666e7a8e739cd2",
  "verification": {
    "reference": "docs/verification/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe1779c0-123a-3305-f786-99b1491f75c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_algEquiv_int_iff {a b a' b' : ℤ} :
    Nonempty (QuadraticAlgebra ℤ a b ≃ₐ[ℤ] QuadraticAlgebra ℤ a' b') ↔
      discr a b = discr a' b' := by
  rw [nonempty_algEquiv_iff (IsRegular.of_ne_zero two_ne_zero)]
  refine ⟨fun ⟨u, hu, _⟩ ↦ by rwa [Int.isUnit_sq u.isUnit, one_mul] at hu, fun h ↦ ?_⟩
  obtain _ | _ : 2 ∣ (b + b') ∨ 2 ∣ (b - b') := by
    rw [← Prime.dvd_mul Int.prime_two, ← sq_sub_sq]
    refine ⟨2 * a' - 2 * a, ?_⟩
    grind [discr]
  · exact ⟨-1, by simpa, by simpa⟩
  · exact ⟨1, by simpa, by simpa⟩

end classification

section field

-- This `Fact (∀ r, r ^ 2 ≠ …)` instance is the bridge that lets the `Field` instance on
-- `QuadraticAlgebra K a b` fire from `¬ IsSquare (discr a b)` alone (the `b = 0` bridge from
-- `¬ IsSquare a` lives in `Basic.lean`).
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1652ce7fd6d1bc1f1af34b22622d719e709a0a11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
