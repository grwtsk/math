# LinearIndependent.pair_smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:092af75b-8161-ba1e-05f3-19b788346f15",
  "kind": "lemma",
  "lexical_name": "LinearIndependent.pair_smul_iff",
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
  "slug": "linearindependent-pair-smul-iff--5bc55fcf721207e98875e926",
  "source": {
    "blob": "1866d14ae75ca55e34b5c2e7b228bca19b7d8f9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 319,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Varianta9447120df265a49b9bca7f9b3ec61932b38e326c87f7ba1e5dd856c0cfa8d62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bc55fcf721207e98875e926257c9e26c0f9c8e380b366d03b45dd68a350ad22",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Varianta9447120df265a49b9bca7f9b3ec61932b38e326c87f7ba1e5dd856c0cfa8d62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:092af75b-8161-ba1e-05f3-19b788346f15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearIndependent.pair_smul_iff {u : S} (hu : u ≠ 0) :
    LinearIndependent R ![u • x, u • y] ↔ LinearIndependent R ![x, y] := by
  simp only [LinearIndependent.pair_iff]
  refine ⟨fun h s t hst ↦ ?_, fun h s t hst ↦ ?_⟩
  · exact h s t (by rw [← smul_comm u s, ← smul_comm u t, ← smul_add, hst, smul_zero])
  · specialize h (u • s) (u • t) (by rw [smul_assoc, smul_assoc, smul_comm u s, smul_comm u t, hst])
    exact ⟨(smul_eq_zero_iff_right hu).mp h.1, (smul_eq_zero_iff_right hu).mp h.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Varianta9447120df265a49b9bca7f9b3ec61932b38e326c87f7ba1e5dd856c0cfa8d62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Varianta9447120df265a49b9bca7f9b3ec61932b38e326c87f7ba1e5dd856c0cfa8d62.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1866d14ae75ca55e34b5c2e7b228bca19b7d8f9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
