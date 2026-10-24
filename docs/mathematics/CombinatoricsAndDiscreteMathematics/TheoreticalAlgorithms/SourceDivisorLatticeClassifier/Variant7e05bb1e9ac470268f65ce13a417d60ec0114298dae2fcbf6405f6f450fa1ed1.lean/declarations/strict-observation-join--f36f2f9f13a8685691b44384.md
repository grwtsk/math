# strict_observation_join

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f0342bb-5122-19d8-a5ad-7b3c1a16e339",
  "kind": "theorem",
  "lexical_name": "strict_observation_join",
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
  "slug": "strict-observation-join--f36f2f9f13a8685691b44384",
  "source": {
    "blob": "9d5aa201a84729bcfd1bb23d56d463d54a8f6108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 135,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f36f2f9f13a8685691b44384c08c52787249b341040c44c0f5bf91bcb65b8b9a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f0342bb-5122-19d8-a5ad-7b3c1a16e339`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strict_observation_join :
    observation {2, 3} {2} ⊔ observation {2, 3} {3} <
      observation {2, 3} ({2} ∩ {3}) := by
  rw [observation_two_bot, observation_three_bot, sup_idem]
  refine lt_of_le_of_ne bot_le ?_
  intro h
  have hh : observation {2, 3} ({2} ∩ {3})
      ⟨2, by simp⟩ ⟨3, by simp⟩ := by
    change divisorPattern ({2} ∩ {3}) 2 = divisorPattern ({2} ∩ {3}) 3
    norm_num [divisorPattern]
  rw [← h] at hh
  have : (2 : ℕ) = 3 := congrArg Subtype.val hh
  norm_num at this

end FormalResearch.RiemannHypothesis.SourceDivisorLatticeClassifier
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d5aa201a84729bcfd1bb23d56d463d54a8f6108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
