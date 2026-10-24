# CStarAlgebra.isUnit_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8038d06-2ca0-d903-3f8c-ba9ccb67c280",
  "kind": "lemma",
  "lexical_name": "CStarAlgebra.isUnit_of_le",
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
  "slug": "cstaralgebra-isunit-of-le--2328efba78c8839446ce423e",
  "source": {
    "blob": "ecb8aff199709e4025859741470e658246b3f3b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2328efba78c8839446ce423eb4425651c922fd57174232fa1fef7e4dc20e53f6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8038d06-2ca0-d903-3f8c-ba9ccb67c280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CStarAlgebra.isUnit_of_le {a b : A} (h₀ : IsUnit a) (ha : 0 ≤ a := by cfc_tac)
    (hab : a ≤ b) : IsUnit b := by
  rw [← spectrum.zero_notMem_iff ℝ≥0] at h₀ ⊢
  nontriviality A
  have hb := (show 0 ≤ a from ha).trans hab
  rw [zero_notMem_iff, SpectrumRestricts.nnreal_lt_iff (.nnreal_of_nonneg ‹_›),
    NNReal.coe_zero, ← CFC.exists_pos_algebraMap_le_iff (.of_nonneg ‹_›)] at h₀ ⊢
  peel h₀ with r hr _
  exact this.trans hab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb8aff199709e4025859741470e658246b3f3b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
