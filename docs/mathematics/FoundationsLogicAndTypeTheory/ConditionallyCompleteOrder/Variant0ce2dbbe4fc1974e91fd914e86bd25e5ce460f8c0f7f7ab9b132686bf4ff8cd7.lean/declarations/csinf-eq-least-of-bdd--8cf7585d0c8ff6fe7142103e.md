# csInf_eq_least_of_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f06c1e72-85bf-0301-5900-55beceb62204",
  "kind": "theorem",
  "lexical_name": "csInf_eq_least_of_bdd",
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
  "slug": "csinf-eq-least-of-bdd--8cf7585d0c8ff6fe7142103e",
  "source": {
    "blob": "d0c56c24657b361a755a3d7d9d8411178e75cfe3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cf7585d0c8ff6fe7142103e2e3fd7b2b7d032d81357cb8e23fdcf957fe279d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f06c1e72-85bf-0301-5900-55beceb62204`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem csInf_eq_least_of_bdd {s : Set ℤ} [DecidablePred (· ∈ s)] (b : ℤ) (Hb : ∀ z ∈ s, b ≤ z)
    (Hinh : ∃ z : ℤ, z ∈ s) : sInf s = leastOfBdd b Hb Hinh := by
  have : s.Nonempty ∧ BddBelow s := ⟨Hinh, b, Hb⟩
  simp only [sInf, dif_pos this]
  convert (coe_leastOfBdd_eq Hb (Classical.choose_spec (⟨b, Hb⟩ : BddBelow s)) Hinh).symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0c56c24657b361a755a3d7d9d8411178e75cfe3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
