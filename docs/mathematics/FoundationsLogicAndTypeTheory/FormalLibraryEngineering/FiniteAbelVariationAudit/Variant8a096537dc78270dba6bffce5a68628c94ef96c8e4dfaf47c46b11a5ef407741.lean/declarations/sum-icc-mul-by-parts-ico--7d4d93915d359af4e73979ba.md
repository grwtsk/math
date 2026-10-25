# sum_Icc_mul_by_parts_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:946c5b94-39de-9c4b-f374-429fadf3208a",
  "kind": "theorem",
  "lexical_name": "sum_Icc_mul_by_parts_Ico",
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
  "slug": "sum-icc-mul-by-parts-ico--7d4d93915d359af4e73979ba",
  "source": {
    "blob": "26d4bf6134934f2ddad1ccb65946c732b07007ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d4d93915d359af4e73979ba81625f4bb6d885f3824cc9d42b7a3fd4dce119e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:946c5b94-39de-9c4b-f374-429fadf3208a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Icc_mul_by_parts_Ico (b e : ℕ → ℝ) (G : ℕ) :
    (∑ g ∈ Icc 1 G, b g * e g) =
      (∑ g ∈ Icc 1 G, b g) * e G +
        ∑ j ∈ Ico 1 G, (∑ g ∈ Icc 1 j, b g) * (e j - e (j + 1)) := by
  induction G with
  | zero => simp
  | succ G ih =>
    by_cases hG : G = 0
    · subst G
      simp
    have hG1 : 1 ≤ G := by omega
    rw [sum_Icc_succ_top (by omega) (fun g ↦ b g * e g),
      sum_Icc_succ_top (by omega) b,
      sum_Ico_succ_top hG1 (fun j ↦ (∑ g ∈ Icc 1 j, b g) * (e j - e (j + 1))), ih]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26d4bf6134934f2ddad1ccb65946c732b07007ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
