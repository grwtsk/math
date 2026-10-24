# streamTransport_mem_subgroup_of_phasewise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0976080-34bb-c102-d27c-1c0b179bd52b",
  "kind": "theorem",
  "lexical_name": "streamTransport_mem_subgroup_of_phasewise",
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
  "slug": "streamtransport-mem-subgroup-of-phasewise--92071dc202152030239cf511",
  "source": {
    "blob": "6a1cd880ff1a1d35b5c60d87f00671d55c6671c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 367,
    "path": "GRWTSK/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92071dc202152030239cf511f3018caa1a0c3ee9aea2e2a0b9d00dc30e405229",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0976080-34bb-c102-d27c-1c0b179bd52b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem streamTransport_mem_subgroup_of_phasewise
    (input : ℕ → ℕ)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3)
    (G : Subgroup (Fiber3 ≃ₗ[ℝ] Fiber3))
    (hG : ∀ p, stepMap p ∈ G) (N : ℕ) :
    streamTransport input h stepMap N ∈ G := by
  apply streamTransport_mem_subgroup input stepMap G (N := N)
  intro n
  exact hG (input n : CoverPhase h)

/-! ## Generic payload-preserving stream views

The chronological fiber word acts only on `Fiber3`.  The following ordinary
equivalences carry an arbitrary payload unchanged; they do not interpret an
external word as a closed path or as geometric monodromy.
-/

/-- Carry a payload through an exact phase-indexed chronological word. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a1cd880ff1a1d35b5c60d87f00671d55c6671c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
