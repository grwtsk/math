# CompleteLattice.ofProp_intro_l

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10cf6bca559faef911fbb9eee2e661c427643f61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 379,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1bdefbfbb8f9641a1d0fc74667775ad534bf26a756b62835fb153cec5203f80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:361dc76d-1934-c404-8505-219135f78d90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:adb12fc5-be2d-3541-8ead-2b1ae56f8f47",
  "kind": "theorem",
  "lexical_name": "CompleteLattice.ofProp_intro_l",
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
  "slug": "completelattice-ofprop-intro-l--e3433b2b584ed9ce2b068de4",
  "source": {
    "blob": "10cf6bca559faef911fbb9eee2e661c427643f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 379,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantc1bdefbfbb8f9641a1d0fc74667775ad534bf26a756b62835fb153cec5203f80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3433b2b584ed9ce2b068de448d08d4fc28d49d5ddb878de6f4247ed685e2242",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantc1bdefbfbb8f9641a1d0fc74667775ad534bf26a756b62835fb153cec5203f80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adb12fc5-be2d-3541-8ead-2b1ae56f8f47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CompleteLattice.ofProp_intro_l [CompleteLattice l] (p : Prop) (x y : l) :
  (x ⊓ ⌜ p ⌝ ⊑ y) = (p → x ⊑ y) := by
  apply propext
  constructor
  · intro h hp
    have hxy : x ⊓ ⊤ ⊑ y := by simp only [CompleteLattice.ofProp, hp, ↓reduceIte] at h; exact h
    have hx_le_meet : x ⊑ x ⊓ ⊤ := le_meet x x ⊤ PartialOrder.rel_refl (le_top x)
    exact PartialOrder.rel_trans hx_le_meet hxy
  · intro h
    simp only [CompleteLattice.ofProp]
    split
    next hp => exact PartialOrder.rel_trans (meet_le_left x ⊤) (h hp)
    next => exact PartialOrder.rel_trans (meet_le_right x ⊥) (bot_le _)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantc1bdefbfbb8f9641a1d0fc74667775ad534bf26a756b62835fb153cec5203f80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantc1bdefbfbb8f9641a1d0fc74667775ad534bf26a756b62835fb153cec5203f80.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10cf6bca559faef911fbb9eee2e661c427643f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
