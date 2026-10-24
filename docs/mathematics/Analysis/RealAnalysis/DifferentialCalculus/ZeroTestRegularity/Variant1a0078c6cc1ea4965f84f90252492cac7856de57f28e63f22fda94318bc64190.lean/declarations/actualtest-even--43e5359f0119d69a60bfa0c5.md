# actualTest_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dc1ee20122b8077b338b3b0dd84b2b870d9b606",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44d47ae5-70de-5db1-8af2-9a3547720c44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0d048bb-fc3d-2ed0-088b-5f148de53d53",
  "kind": "theorem",
  "lexical_name": "actualTest_even",
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
  "slug": "actualtest-even--43e5359f0119d69a60bfa0c5",
  "source": {
    "blob": "8dc1ee20122b8077b338b3b0dd84b2b870d9b606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43e5359f0119d69a60bfa0c5e2b83b65011c27754921d729c43091a54963eef9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0d048bb-fc3d-2ed0-088b-5f148de53d53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTest_even (A : ℝ) (hA : 1 ≤ A) : Function.Even (actualTest A) := by
  intro x
  rw [actualTest_eq_indicator A hA]
  have hm : -x ∈ Icc (-A) A ↔ x ∈ Icc (-A) A := by
    simp only [mem_Icc]
    constructor <;> intro h <;> constructor <;> linarith [h.1, h.2]
  simp [indicator_apply, hm, testInterior, secondInterior, bumpInterior, neg_div]
  split_ifs <;> ring

/-- Genuine integrability follows from the proved continuous compact source test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc1ee20122b8077b338b3b0dd84b2b870d9b606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
