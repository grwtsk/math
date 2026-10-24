# Sized.induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d60e6f837c547ef8117f69ce51f166c83810a09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/545a9323df8fc68971b95b22bb4c1ab5aeee8fe1d902eed3d964b9dff6c7690e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9f8caef-fb7c-1f6a-0e3e-a70b1a49b2df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3213ae1-323b-eee9-b599-0efc9927ee99",
  "kind": "theorem",
  "lexical_name": "Sized.induction",
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
  "slug": "sized-induction--5771fd6a50b67b7e5498e4a9",
  "source": {
    "blob": "6d60e6f837c547ef8117f69ce51f166c83810a09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 93,
    "path": "GRWTSK/Topology/MetricTopology/Invariants/Variant545a9323df8fc68971b95b22bb4c1ab5aeee8fe1d902eed3d964b9dff6c7690e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5771fd6a50b67b7e5498e4a9378066b1adf969532b6fc6d5d5e028063aaab715",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Invariants/Variant545a9323df8fc68971b95b22bb4c1ab5aeee8fe1d902eed3d964b9dff6c7690e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3213ae1-323b-eee9-b599-0efc9927ee99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sized.induction {t} (hl : @Sized α t) {C : Ordnode α → Prop} (H0 : C nil)
    (H1 : ∀ l x r, C l → C r → C (.node' l x r)) : C t := by
  induction t with
  | nil => exact H0
  | node _ _ _ _ t_ih_l t_ih_r =>
    rw [hl.eq_node']
    exact H1 _ _ _ (t_ih_l hl.2.1) (t_ih_r hl.2.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Invariants/Variant545a9323df8fc68971b95b22bb4c1ab5aeee8fe1d902eed3d964b9dff6c7690e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Invariants/Variant545a9323df8fc68971b95b22bb4c1ab5aeee8fe1d902eed3d964b9dff6c7690e.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d60e6f837c547ef8117f69ce51f166c83810a09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
