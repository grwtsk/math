# mem_equivPair_tail_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5124bd5f92bb23ae31b94db5ec4923c652facbcd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 446,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6a6c989d015f4b3baf9fabb51f789c35c9dbc274ac4acbe0cdb2ce446c65f9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eec5b34e-3f93-8ff6-983d-b816dc2d66da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35496355-bd09-b476-8429-c252b4705689",
  "kind": "theorem",
  "lexical_name": "mem_equivPair_tail_iff",
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
  "slug": "mem-equivpair-tail-iff--df8147f338a8892fdb0471cd",
  "source": {
    "blob": "5124bd5f92bb23ae31b94db5ec4923c652facbcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 446,
    "path": "GRWTSK/Algebra/GroupTheory/CoprodI/Variantd6a6c989d015f4b3baf9fabb51f789c35c9dbc274ac4acbe0cdb2ce446c65f9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df8147f338a8892fdb0471cd166e18499fbdc87d5b0a5db8bd758621e5043144",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CoprodI/Variantd6a6c989d015f4b3baf9fabb51f789c35c9dbc274ac4acbe0cdb2ce446c65f9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35496355-bd09-b476-8429-c252b4705689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_equivPair_tail_iff {i j : ι} {w : Word M} (m : M i) :
    (⟨i, m⟩ ∈ (equivPair j w).tail.toList) ↔ ⟨i, m⟩ ∈ w.toList.tail
      ∨ i ≠ j ∧ ∃ h : w.toList ≠ [], w.toList.head h = ⟨i, m⟩ := by
  simp only [equivPair, equivPairAux, ne_eq, Equiv.coe_fn_mk]
  induction w using consRecOn with
  | empty => simp
  | cons k g tail h1 h2 ih =>
    simp only [consRecOn_cons]
    split_ifs with h
    · subst k
      by_cases hij : j = i <;> simp_all
    · by_cases hik : i = k
      · subst i; simp_all [@eq_comm _ m g, @eq_comm _ k j, or_comm]
      · simp [hik, Ne.symm hik]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CoprodI/Variantd6a6c989d015f4b3baf9fabb51f789c35c9dbc274ac4acbe0cdb2ce446c65f9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CoprodI/Variantd6a6c989d015f4b3baf9fabb51f789c35c9dbc274ac4acbe0cdb2ce446c65f9a.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5124bd5f92bb23ae31b94db5ec4923c652facbcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
