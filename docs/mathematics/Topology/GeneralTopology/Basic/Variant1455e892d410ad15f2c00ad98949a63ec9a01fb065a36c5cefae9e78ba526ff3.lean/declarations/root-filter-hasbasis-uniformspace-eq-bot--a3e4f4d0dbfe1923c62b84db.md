# _root_.Filter.HasBasis.uniformSpace_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "465181b36d0694eedcd5d526c39adbe802970d7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 494,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f62c87c0-1d3f-420a-5944-af9f639cff3e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2dabcaf-7f31-9877-93e6-554621dd797f",
  "kind": "lemma",
  "lexical_name": "_root_.Filter.HasBasis.uniformSpace_eq_bot",
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
  "slug": "root-filter-hasbasis-uniformspace-eq-bot--a3e4f4d0dbfe1923c62b84db",
  "source": {
    "blob": "465181b36d0694eedcd5d526c39adbe802970d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 494,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3e4f4d0dbfe1923c62b84dbeb10a7c3fffe76c69e826c40fe1a1a81ea09ab31",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2dabcaf-7f31-9877-93e6-554621dd797f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma _root_.Filter.HasBasis.uniformSpace_eq_bot {ι p} {s : ι → SetRel α α}
    {u : UniformSpace α} (h : 𝓤[u].HasBasis p s) :
    u = ⊥ ↔ ∃ i, p i ∧ Pairwise fun x y : α ↦ (x, y) ∉ s i := by
  simp [uniformSpace_eq_bot, h.mem_iff, subset_def, Pairwise, not_imp_not]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465181b36d0694eedcd5d526c39adbe802970d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
