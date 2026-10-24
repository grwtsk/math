# existsUnique_iff_card_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d2bf669-4cd7-451b-5953-8295b8183ed2",
  "kind": "theorem",
  "lexical_name": "existsUnique_iff_card_one",
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
  "slug": "existsunique-iff-card-one--98f5b0da12264c4e66e8226d",
  "source": {
    "blob": "0ebbf0c0d14f94e6b9b2388220a8b79c29bbf0e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 294,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant87c513b1e7df4d050239e1ad0df5187bd3669735075f2ea9e24445db64acab33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98f5b0da12264c4e66e8226d4a949066ff2e851944d61abdfc5d36330ab79ad3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variant87c513b1e7df4d050239e1ad0df5187bd3669735075f2ea9e24445db64acab33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d2bf669-4cd7-451b-5953-8295b8183ed2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_iff_card_one {α} [Fintype α] (p : α → Prop) [DecidablePred p] :
    (∃! a : α, p a) ↔ #{x | p x} = 1 := by
  rw [Finset.card_eq_one]
  refine exists_congr fun x => ?_
  simp only [forall_true_left, Subset.antisymm_iff, subset_singleton_iff', singleton_subset_iff,
      true_and, and_comm, mem_univ, mem_filter]

@[deprecated (since := "2024-12-17")] alias exists_unique_iff_card_one := existsUnique_iff_card_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variant87c513b1e7df4d050239e1ad0df5187bd3669735075f2ea9e24445db64acab33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant87c513b1e7df4d050239e1ad0df5187bd3669735075f2ea9e24445db64acab33.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ebbf0c0d14f94e6b9b2388220a8b79c29bbf0e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
