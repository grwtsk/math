# RelCWComplex.finite_cells_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91f3cdc1db6f6bfce3e67411aa09e7d58bdb7543",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 326,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:652ba3fc-9127-04d2-8e3b-a41fb0ec80d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:292024f7-f270-0d3f-3c06-da41b274e908",
  "kind": "lemma",
  "lexical_name": "RelCWComplex.finite_cells_of_finite",
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
  "slug": "relcwcomplex-finite-cells-of-finite--f28d5842b8b8f40f37f8bc62",
  "source": {
    "blob": "91f3cdc1db6f6bfce3e67411aa09e7d58bdb7543",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 326,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f28d5842b8b8f40f37f8bc6230e2f68a2090517074220090177b5714bfe0ee9f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:292024f7-f270-0d3f-3c06-da41b274e908`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RelCWComplex.finite_cells_of_finite [finite : Finite C] : _root_.Finite (Σ n, cell C n) := by
  -- We show that there is a bijection between `Σ n, cell C n` and
  -- `Σ (m : {m : ℕ // m < n}), cell C m`.
  have h := finite.eventually_isEmpty_cell
  have _ := finite.finite_cell
  simp only [Filter.eventually_atTop, ge_iff_le] at h
  rcases h with ⟨n, hn⟩
  have (m) (j : cell C m) : m < n := by
    by_contra h
    exact (hn m (not_lt.1 h)).false j
  let f : (Σ (m : {m : ℕ // m < n}), cell C m) ≃ Σ m, cell C m := {
    toFun := fun ⟨m, j⟩ ↦ ⟨m, j⟩
    invFun := fun ⟨m, j⟩ ↦ ⟨⟨m, this m j⟩, j⟩
    left_inv := by simp [Function.LeftInverse]
    right_inv := by simp [Function.RightInverse, Function.LeftInverse]}
  rw [← Equiv.finite_iff f]
  exact Finite.instSigma

/-- A CW complex is finite iff the total number of its cells is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f3cdc1db6f6bfce3e67411aa09e7d58bdb7543` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
