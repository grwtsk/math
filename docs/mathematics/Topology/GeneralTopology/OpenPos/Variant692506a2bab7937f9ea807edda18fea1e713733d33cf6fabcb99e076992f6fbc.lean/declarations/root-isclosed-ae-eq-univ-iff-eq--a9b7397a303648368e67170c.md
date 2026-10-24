# _root_.IsClosed.ae_eq_univ_iff_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37469dd4c1fe3cde01c3788b00c48d474fdee7c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cd2a91a-10ff-3599-2edf-0a2d9cdd10f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a2bac04-a3c8-0787-ee13-956429bfc40d",
  "kind": "theorem",
  "lexical_name": "_root_.IsClosed.ae_eq_univ_iff_eq",
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
  "slug": "root-isclosed-ae-eq-univ-iff-eq--a9b7397a303648368e67170c",
  "source": {
    "blob": "37469dd4c1fe3cde01c3788b00c48d474fdee7c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9b7397a303648368e67170c2eed47b2a574457a5098a57273ebf833432dab93",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a2bac04-a3c8-0787-ee13-956429bfc40d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.IsClosed.ae_eq_univ_iff_eq (hF : IsClosed F) :
    F =ᵐ[μ] univ ↔ F = univ := by
  refine ⟨fun h ↦ ?_, fun h ↦ by rw [h]⟩
  rwa [ae_eq_univ, hF.isOpen_compl.measure_eq_zero_iff μ, compl_empty_iff] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenPos/Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37469dd4c1fe3cde01c3788b00c48d474fdee7c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
