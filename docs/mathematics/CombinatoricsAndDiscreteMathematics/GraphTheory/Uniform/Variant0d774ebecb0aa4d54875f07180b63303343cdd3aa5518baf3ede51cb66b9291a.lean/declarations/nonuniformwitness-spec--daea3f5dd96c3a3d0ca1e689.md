# nonuniformWitness_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d2e41fc81283a95f539265b839889245e9cdaa5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5bf7ae1c-819e-067c-a2b2-6095e9509488",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc90bcb6-287c-e678-97cb-8dbd22cadc74",
  "kind": "theorem",
  "lexical_name": "nonuniformWitness_spec",
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
  "slug": "nonuniformwitness-spec--daea3f5dd96c3a3d0ca1e689",
  "source": {
    "blob": "6d2e41fc81283a95f539265b839889245e9cdaa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 172,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daea3f5dd96c3a3d0ca1e6894a16bb1ec76bec456eb342f662b094a748069b15",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc90bcb6-287c-e678-97cb-8dbd22cadc74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonuniformWitness_spec (h₁ : s ≠ t) (h₂ : ¬G.IsUniform ε s t) : ε ≤ |G.edgeDensity
    (G.nonuniformWitness ε s t) (G.nonuniformWitness ε t s) - G.edgeDensity s t| := by
  unfold nonuniformWitness
  rcases trichotomous_of WellOrderingRel s t with (lt | rfl | gt)
  · rw [if_pos lt, if_neg (asymm lt)]
    exact G.nonuniformWitnesses_spec h₂
  · cases h₁ rfl
  · rw [if_neg (asymm gt), if_pos gt, edgeDensity_comm, edgeDensity_comm _ s]
    apply G.nonuniformWitnesses_spec fun i => h₂ i.symm

end SimpleGraph

/-! ### Uniform partitions -/


variable [DecidableEq α] {A : Finset α} (P : Finpartition A) (G : SimpleGraph α)
  [DecidableRel G.Adj] {ε δ : 𝕜} {u v : Finset α}

namespace Finpartition

/-- The pairs of parts of a partition `P` which are not `ε`-dense in a graph `G`. Note that we
dismiss the diagonal. We do not care whether `s` is `ε`-dense with itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d2e41fc81283a95f539265b839889245e9cdaa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
