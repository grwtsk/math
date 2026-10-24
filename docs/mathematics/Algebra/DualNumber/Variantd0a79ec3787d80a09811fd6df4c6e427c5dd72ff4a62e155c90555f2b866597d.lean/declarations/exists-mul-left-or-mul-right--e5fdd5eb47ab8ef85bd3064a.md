# exists_mul_left_or_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6414ff1afec3090fd605d9a47c62488dae93b5ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4883fb5b-0a9f-2d8a-e8be-afee971e5230",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd62b6b9-45c8-f639-8476-1a9c5789c1ae",
  "kind": "lemma",
  "lexical_name": "exists_mul_left_or_mul_right",
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
  "slug": "exists-mul-left-or-mul-right--e5fdd5eb47ab8ef85bd3064a",
  "source": {
    "blob": "6414ff1afec3090fd605d9a47c62488dae93b5ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 149,
    "path": "GRWTSK/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5fdd5eb47ab8ef85bd3064a53a77a92c1795a60637e8042d66d3c125db0fd4a",
  "verification": {
    "reference": "docs/verification/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd62b6b9-45c8-f639-8476-1a9c5789c1ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mul_left_or_mul_right [DivisionRing K] (a b : K[ε]) :
    ∃ c, a * c = b ∨ b * c = a := by
  rcases isUnit_or_isNilpotent a with ha|ha
  · lift a to K[ε]ˣ using ha
    exact ⟨a⁻¹ * b, by simp⟩
  rcases isUnit_or_isNilpotent b with hb|hb
  · lift b to K[ε]ˣ using hb
    exact ⟨b⁻¹ * a, by simp⟩
  rw [isNilpotent_iff_eps_dvd] at ha hb
  obtain ⟨x, rfl⟩ := ha
  obtain ⟨y, rfl⟩ := hb
  suffices ∃ c, fst x * fst c = fst y ∨ fst y * fst c = fst x by
    simpa [TrivSqZeroExt.ext_iff] using this
  rcases eq_or_ne (fst x) 0 with hx|hx
  · refine ⟨ε, Or.inr ?_⟩
    simp [hx]
  refine ⟨inl ((fst x)⁻¹ * fst y), ?_⟩
  simp [← inl_mul, ← mul_assoc, mul_inv_cancel₀ hx]

end Field

end DualNumber
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6414ff1afec3090fd605d9a47c62488dae93b5ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
