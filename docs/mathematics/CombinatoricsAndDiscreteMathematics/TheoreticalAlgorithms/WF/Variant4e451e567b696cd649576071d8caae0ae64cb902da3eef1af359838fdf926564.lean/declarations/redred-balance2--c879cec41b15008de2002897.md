# RedRed.balance2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46ed5eda88fdb5dc6a181165ae3c2be9d4a7ab7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e451e567b696cd649576071d8caae0ae64cb902da3eef1af359838fdf926564.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e102ec8e-9ad7-ce95-8895-5691424637e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b2a7e73-7ccf-21c9-01fe-915531ef86d5",
  "kind": "theorem",
  "lexical_name": "RedRed.balance2",
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
  "slug": "redred-balance2--c879cec41b15008de2002897",
  "source": {
    "blob": "46ed5eda88fdb5dc6a181165ae3c2be9d4a7ab7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 166,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant4e451e567b696cd649576071d8caae0ae64cb902da3eef1af359838fdf926564.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c879cec41b15008de20028977106ad92f59035bc1584ddb2ad7a6492a69978d3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant4e451e567b696cd649576071d8caae0ae64cb902da3eef1af359838fdf926564.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b2a7e73-7ccf-21c9-01fe-915531ef86d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem RedRed.balance2 {l : RBNode α} {v : α} {r : RBNode α}
    (hl : l.Balanced c n) (hr : r.RedRed p n) : ∃ c, (balance2 l v r).Balanced c (n + 1) := by
  unfold balance2; split
  · have .redred _ (.red ha hb) hc := hr; exact ⟨_, .red (.black hl ha) (.black hb hc)⟩
  · have .redred _ ha (.red hb hc) := hr; exact ⟨_, .red (.black hl ha) (.black hb hc)⟩
  · next H1 H2 => match hr with
    | .balanced hr => exact ⟨_, .black hl hr⟩
    | .redred _ (c₁ := black) (c₂ := black) ha hb => exact ⟨_, .black hl (.red ha hb)⟩
    | .redred _ (c₁ := red) (.red ..) _ => cases H1 _ _ _ _ _ rfl
    | .redred _ (c₂ := red) _ (.red ..) => cases H2 _ _ _ _ _ rfl

/-- The `balance1` function does nothing if the first argument is already balanced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant4e451e567b696cd649576071d8caae0ae64cb902da3eef1af359838fdf926564.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant4e451e567b696cd649576071d8caae0ae64cb902da3eef1af359838fdf926564.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46ed5eda88fdb5dc6a181165ae3c2be9d4a7ab7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
