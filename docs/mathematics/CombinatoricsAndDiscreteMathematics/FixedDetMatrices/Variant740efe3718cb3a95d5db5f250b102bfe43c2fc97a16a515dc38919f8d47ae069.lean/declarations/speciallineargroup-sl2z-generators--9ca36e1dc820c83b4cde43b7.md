# SpecialLinearGroup.SL2Z_generators

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b790cec4-2e62-eab0-23e7-130b216e134b",
  "kind": "lemma",
  "lexical_name": "SpecialLinearGroup.SL2Z_generators",
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
  "slug": "speciallineargroup-sl2z-generators--9ca36e1dc820c83b4cde43b7",
  "source": {
    "blob": "4e4c109daecc1be7b9449c2925286a1c235bfd40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 282,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ca36e1dc820c83b4cde43b71bf28b87bb493a02cfcfa6b1773f2f5d972d994b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b790cec4-2e62-eab0-23e7-130b216e134b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SpecialLinearGroup.SL2Z_generators : closure {S, T} = ⊤ := by
  rw [eq_top_iff']
  intro A
  induction A using (induction_on one_ne_zero) with
  | h0 A a1 a4 _ a6 =>
    rw [reps_one_id A a1 a4 a6]
    exact one_mem _
  | hS B hb =>
    exact mul_mem (subset_closure (Set.mem_insert S {T})) hb
  | hT B hb =>
    exact mul_mem (subset_closure (Set.mem_insert_of_mem S rfl)) hb

end SL2Z_generators
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e4c109daecc1be7b9449c2925286a1c235bfd40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
