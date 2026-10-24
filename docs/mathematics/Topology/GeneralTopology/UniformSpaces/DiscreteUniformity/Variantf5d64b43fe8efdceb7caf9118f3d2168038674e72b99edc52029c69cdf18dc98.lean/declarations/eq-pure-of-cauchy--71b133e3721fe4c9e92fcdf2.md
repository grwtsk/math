# eq_pure_of_cauchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "817af4dd37a841007345f37a1b782ec660fc8e6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2133b499-a2fa-90a5-04c2-d5d501022805",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0bd86518-9044-a05e-3faf-e4fc2c4aeb9d",
  "kind": "theorem",
  "lexical_name": "eq_pure_of_cauchy",
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
  "slug": "eq-pure-of-cauchy--71b133e3721fe4c9e92fcdf2",
  "source": {
    "blob": "817af4dd37a841007345f37a1b782ec660fc8e6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 75,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71b133e3721fe4c9e92fcdf20c8c0db48f3a3824aa509f6f8c571c0662921398",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bd86518-9044-a05e-3faf-e4fc2c4aeb9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_pure_of_cauchy {α : Filter X} (hα : Cauchy α) : ∃ x : X, α = pure x := by
  rcases hα with ⟨α_ne_bot, α_le⟩
  simp only [DiscreteUniformity.eq_principal_idRel, le_principal_iff, mem_prod_iff] at α_le
  obtain ⟨S, ⟨hS, ⟨T, ⟨hT, H⟩⟩⟩⟩ := α_le
  obtain ⟨x, rfl⟩ := eq_singleton_left_of_prod_subset_idRel (α_ne_bot.nonempty_of_mem hS)
    (Filter.nonempty_of_mem hT) H
  exact ⟨x, α_ne_bot.le_pure_iff.mp <| le_pure_iff.mpr hS⟩

@[deprecated (since := "2025-03-23")]
alias _root_.UniformSpace.DiscreteUnif.cauchy_le_pure := eq_pure_of_cauchy

/-- The discrete uniformity makes a space complete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/DiscreteUniformity/Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `817af4dd37a841007345f37a1b782ec660fc8e6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
