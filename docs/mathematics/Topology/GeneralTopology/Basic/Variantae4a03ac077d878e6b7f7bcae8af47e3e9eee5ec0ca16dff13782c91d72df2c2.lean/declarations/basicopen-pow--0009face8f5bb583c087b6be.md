# basicOpen_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e998ab35341220adc24f5f35d25a30c0d3af6bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae4a03ac077d878e6b7f7bcae8af47e3e9eee5ec0ca16dff13782c91d72df2c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:573bef9e-21a6-98c2-4dd1-01b38ccf324d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8265b178-4dc8-4c55-68ed-b303ec22976e",
  "kind": "lemma",
  "lexical_name": "basicOpen_pow",
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
  "slug": "basicopen-pow--0009face8f5bb583c087b6be",
  "source": {
    "blob": "9e998ab35341220adc24f5f35d25a30c0d3af6bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 202,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantae4a03ac077d878e6b7f7bcae8af47e3e9eee5ec0ca16dff13782c91d72df2c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0009face8f5bb583c087b6be338af4b6d1d42139ba17a6c8949d8a827f1e865b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantae4a03ac077d878e6b7f7bcae8af47e3e9eee5ec0ca16dff13782c91d72df2c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8265b178-4dc8-4c55-68ed-b303ec22976e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma basicOpen_pow {U : Opens X} (f : X.presheaf.obj (op U)) (n : ℕ) (h : 0 < n) :
    X.basicOpen (f ^ n) = X.basicOpen f := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le' h
  induction k with
  | zero => simp
  | succ n hn => rw [pow_add]; simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantae4a03ac077d878e6b7f7bcae8af47e3e9eee5ec0ca16dff13782c91d72df2c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantae4a03ac077d878e6b7f7bcae8af47e3e9eee5ec0ca16dff13782c91d72df2c2.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e998ab35341220adc24f5f35d25a30c0d3af6bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
