# ofENat_toENat_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fd145fa-b95d-ca6d-8f9d-c95363a0ac67",
  "kind": "lemma",
  "lexical_name": "ofENat_toENat_eq_self",
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
  "slug": "ofenat-toenat-eq-self--7a33cec4bfa8c7e8b4ed2b93",
  "source": {
    "blob": "e03492103ebc80673d007bed8ea44dbaa8937aa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 249,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variantf9b6c25bb529c0602f4cafd50e083c25e266839666bd49cc154f18b6926853e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a33cec4bfa8c7e8b4ed2b931b04316d1653f7d67985aa1b34e12b1a5f9b77db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variantf9b6c25bb529c0602f4cafd50e083c25e266839666bd49cc154f18b6926853e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fd145fa-b95d-ca6d-8f9d-c95363a0ac67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofENat_toENat_eq_self {a : Cardinal} : toENat a = a ↔ a ≤ ℵ₀ := by
  rw [eq_comm, ← enat_gc.exists_eq_l]
  simpa only [mem_range, eq_comm] using! Set.ext_iff.1 range_ofENat a

@[simp] alias ⟨_, ofENat_toENat⟩ := ofENat_toENat_eq_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variantf9b6c25bb529c0602f4cafd50e083c25e266839666bd49cc154f18b6926853e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variantf9b6c25bb529c0602f4cafd50e083c25e266839666bd49cc154f18b6926853e5.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e03492103ebc80673d007bed8ea44dbaa8937aa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
