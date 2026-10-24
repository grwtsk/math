# fermatPsp_base_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7ab78ff65ee83ba68b27eec272f829a971f7316",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d040b0c-4f0b-da96-21bc-c8c7775e3b1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9db2712-1d69-43db-bcd5-c3f1f6b6d84b",
  "kind": "theorem",
  "lexical_name": "fermatPsp_base_one",
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
  "slug": "fermatpsp-base-one--50b7430fe6ecf66ac104b931",
  "source": {
    "blob": "d7ab78ff65ee83ba68b27eec272f829a971f7316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 128,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50b7430fe6ecf66ac104b931caadbdfe798afe10e7a6f82f27a0266061f67d6d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9db2712-1d69-43db-bcd5-c3f1f6b6d84b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fermatPsp_base_one {n : ℕ} (h₁ : 1 < n) (h₂ : ¬n.Prime) : FermatPsp n 1 := by
  refine ⟨show n ∣ 1 ^ (n - 1) - 1 from ?_, h₂, h₁⟩
  exact show 0 = 1 ^ (n - 1) - 1 by simp ▸ dvd_zero n

-- Lemmas that are needed to prove statements in this file, but aren't directly related to Fermat
-- pseudoprimes
section HelperLemmas

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7ab78ff65ee83ba68b27eec272f829a971f7316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
