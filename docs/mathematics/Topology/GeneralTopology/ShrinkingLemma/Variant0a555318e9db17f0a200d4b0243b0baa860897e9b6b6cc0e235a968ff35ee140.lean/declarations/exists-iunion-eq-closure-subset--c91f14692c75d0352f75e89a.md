# exists_iUnion_eq_closure_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2425239e28a40656dbbec1cea36e96cc3c6f0d6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3a06665-2f7d-b8ba-a97d-42d40d7c11b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a76a06c3-ecda-34f3-0201-986498a380e2",
  "kind": "theorem",
  "lexical_name": "exists_iUnion_eq_closure_subset",
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
  "slug": "exists-iunion-eq-closure-subset--c91f14692c75d0352f75e89a",
  "source": {
    "blob": "2425239e28a40656dbbec1cea36e96cc3c6f0d6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 248,
    "path": "GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c91f14692c75d0352f75e89a2e029c002217524b07ad6adbfc5ef41fcf8964bd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a76a06c3-ecda-34f3-0201-986498a380e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_iUnion_eq_closure_subset (uo : ∀ i, IsOpen (u i)) (uf : ∀ x, { i | x ∈ u i }.Finite)
    (uU : ⋃ i, u i = univ) :
    ∃ v : ι → Set X, iUnion v = univ ∧ (∀ i, IsOpen (v i)) ∧ ∀ i, closure (v i) ⊆ u i :=
  let ⟨v, vU, hv⟩ := exists_subset_iUnion_closure_subset isClosed_univ uo (fun x _ => uf x) uU.ge
  ⟨v, univ_subset_iff.1 vU, hv⟩
#align exists_Union_eq_closure_subset exists_iUnion_eq_closure_subset

/-- Shrinking lemma. A point-finite open cover of a closed subset of a normal space can be "shrunk"
to a new closed cover so that each of the new closed sets is contained in the corresponding
original open set. See also `exists_iUnion_eq_closure_subset` for a stronger statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2425239e28a40656dbbec1cea36e96cc3c6f0d6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
