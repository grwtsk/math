# IsHausdorff.eq_iff_smodEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87b018c1-a6dc-de75-0820-54c60a3f340c",
  "kind": "theorem",
  "lexical_name": "IsHausdorff.eq_iff_smodEq",
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
  "slug": "ishausdorff-eq-iff-smodeq--83bf7fbf631f25bd3780e4fa",
  "source": {
    "blob": "3f06e8641d53e29e662869e79faca58f4a89b458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8f233e70758b45f8f9498d6014222e6ac94b7b0b2ae52005974ca3ec6a513350.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83bf7fbf631f25bd3780e4fab2458d99c7521e7e2d035e3ad4cd7b1dbd56b623",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant8f233e70758b45f8f9498d6014222e6ac94b7b0b2ae52005974ca3ec6a513350.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87b018c1-a6dc-de75-0820-54c60a3f340c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsHausdorff.eq_iff_smodEq [IsHausdorff I M] {x y : M} :
    x = y ↔ ∀ n, x ≡ y [SMOD (I ^ n • ⊤ : Submodule R M)] := by
  refine ⟨fun h _ ↦ h ▸ rfl, fun h ↦ ?_⟩
  rw [← sub_eq_zero]
  apply IsHausdorff.haus' (I := I) (x - y)
  simpa [SModEq.sub_mem] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant8f233e70758b45f8f9498d6014222e6ac94b7b0b2ae52005974ca3ec6a513350.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant8f233e70758b45f8f9498d6014222e6ac94b7b0b2ae52005974ca3ec6a513350.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f06e8641d53e29e662869e79faca58f4a89b458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
