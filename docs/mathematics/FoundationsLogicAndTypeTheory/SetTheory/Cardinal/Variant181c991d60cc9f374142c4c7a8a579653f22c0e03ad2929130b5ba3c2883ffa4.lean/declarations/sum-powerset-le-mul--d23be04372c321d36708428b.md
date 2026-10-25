# sum_powerset_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:915ad2c3-2d8a-b856-e5a4-a28e8dc60a73",
  "kind": "theorem",
  "lexical_name": "sum_powerset_le_mul",
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
  "slug": "sum-powerset-le-mul--d23be04372c321d36708428b",
  "source": {
    "blob": "2502e92cf74a1279d89cca8d278628f8edb783b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant181c991d60cc9f374142c4c7a8a579653f22c0e03ad2929130b5ba3c2883ffa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d23be04372c321d36708428b8f4caba89b2d9b0c8bfa5a29459815c3e0bf5403",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant181c991d60cc9f374142c4c7a8a579653f22c0e03ad2929130b5ba3c2883ffa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:915ad2c3-2d8a-b856-e5a4-a28e8dc60a73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_powerset_le_mul (P : Set (Set X)) (μ lam : Cardinal.{u})
    (hμ : μ.IsStrongLimit) (hP : #P ≤ lam) (hsize : ∀ C ∈ P, #C < μ) :
    (Cardinal.sum fun C : P ↦ 2 ^ #C.val) ≤ lam * μ := by
  calc
    _ ≤ Cardinal.sum fun _ : P ↦ μ :=
      Cardinal.sum_le_sum _ _ fun C ↦ (hμ.isStrongPrelimit (hsize C.val C.property)).le
    _ = #P * μ := Cardinal.sum_const' _ _
    _ ≤ lam * μ := mul_le_mul' hP le_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant181c991d60cc9f374142c4c7a8a579653f22c0e03ad2929130b5ba3c2883ffa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant181c991d60cc9f374142c4c7a8a579653f22c0e03ad2929130b5ba3c2883ffa4.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2502e92cf74a1279d89cca8d278628f8edb783b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
