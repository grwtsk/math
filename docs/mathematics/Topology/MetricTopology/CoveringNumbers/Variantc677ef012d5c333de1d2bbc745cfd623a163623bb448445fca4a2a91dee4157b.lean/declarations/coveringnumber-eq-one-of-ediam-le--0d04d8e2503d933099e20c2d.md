# coveringNumber_eq_one_of_ediam_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac4085f88cc6ecc5c1d0a0146b17defb3bfb1d0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1c93ff0-5808-e124-486a-545ab5ed4ea8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:506cb154-9ed8-129b-7337-4fe241e34812",
  "kind": "lemma",
  "lexical_name": "coveringNumber_eq_one_of_ediam_le",
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
  "slug": "coveringnumber-eq-one-of-ediam-le--0d04d8e2503d933099e20c2d",
  "source": {
    "blob": "ac4085f88cc6ecc5c1d0a0146b17defb3bfb1d0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 188,
    "path": "GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d04d8e2503d933099e20c2d177e572e50349ffb2613e23bd1b45ac8ebe9f121",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:506cb154-9ed8-129b-7337-4fe241e34812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coveringNumber_eq_one_of_ediam_le (h_nonempty : A.Nonempty) (hA : ediam A ≤ ε) :
    coveringNumber ε A = 1 := by
  refine le_antisymm ?_ ?_
  · have ⟨a, ha⟩ := h_nonempty
    calc coveringNumber ε A
      _ ≤ ({a} : Set X).encard :=
        (IsCover.singleton_of_ediam_le hA ha).coveringNumber_le_encard (by simp [ha])
      _ ≤ 1 := by simp
  · simpa [Order.one_le_iff_pos]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac4085f88cc6ecc5c1d0a0146b17defb3bfb1d0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
