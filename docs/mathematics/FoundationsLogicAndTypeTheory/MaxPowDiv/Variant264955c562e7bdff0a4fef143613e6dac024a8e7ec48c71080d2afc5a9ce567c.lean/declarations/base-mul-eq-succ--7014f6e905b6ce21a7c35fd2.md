# base_mul_eq_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f7f88e6-b3d1-738f-69ac-7cb187b31760",
  "kind": "theorem",
  "lexical_name": "base_mul_eq_succ",
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
  "slug": "base-mul-eq-succ--7014f6e905b6ce21a7c35fd2",
  "source": {
    "blob": "acc0743305ff1c533d9a7480b764b6167ac5e5cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7014f6e905b6ce21a7c35fd2c6db0d467e927a96d9806fefbdf54ef01b0379e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f7f88e6-b3d1-738f-69ac-7cb187b31760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem base_mul_eq_succ {p n : ℕ} (hp : 1 < p) (hn : 0 < n) :
    p.maxPowDiv (p*n) = p.maxPowDiv n + 1 := by
  have : 0 < p := lt_trans (b := 1) (by simp) hp
  dsimp [maxPowDiv]
  rw [maxPowDiv.go_eq, if_pos, mul_div_right _ this]
  · apply go_succ
  · refine ⟨hp, ?_, by simp⟩
    apply Nat.mul_pos this hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acc0743305ff1c533d9a7480b764b6167ac5e5cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
