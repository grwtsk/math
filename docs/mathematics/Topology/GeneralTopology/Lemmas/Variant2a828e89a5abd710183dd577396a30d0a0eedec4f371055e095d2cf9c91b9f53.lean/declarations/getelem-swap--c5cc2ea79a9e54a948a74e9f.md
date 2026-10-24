# getElem_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "095f4906a19ccab8440e92f7035a4843cf6ca575",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1458,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70c3db0f-0eb8-738d-5ed7-1a2c8deb771c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:685914af-08b5-fe71-cb69-68b78052c6c3",
  "kind": "theorem",
  "lexical_name": "getElem_swap",
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
  "slug": "getelem-swap--c5cc2ea79a9e54a948a74e9f",
  "source": {
    "blob": "095f4906a19ccab8440e92f7035a4843cf6ca575",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1468,
    "line": 1458,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5cc2ea79a9e54a948a74e9f1b349c46c9441f5cfef6c5214cb9c2f27ce4106a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:685914af-08b5-fe71-cb69-68b78052c6c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1458–1468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_swap {xs : List α} {i j k : Nat}
    (hk : k < (xs.swap i j).length) : (xs.swap i j)[k] =
    if h₁ : k = i ∧ j < xs.length then xs[j] else if h₂ : k = j ∧ i < xs.length then xs[i]
    else xs[k]'(length_swap ▸ hk) := by
  obtain (rfl | hi) := Decidable.em (k = i)
  · simp only [getElem_swap_left, true_and]
    exact dite_congr rfl (fun _ => rfl) (by simp)
  · obtain (rfl | hj) := Decidable.em (k = j)
    · simp [getElem_swap_right, hi]
    · simp [getElem_swap_of_ne, hi, hj]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean#L1458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `095f4906a19ccab8440e92f7035a4843cf6ca575` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
