# boundedSubring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef48911a1da8596601d7c596b7913c999067c9c6d548fde4aa7ea9c536180ed3",
  "kind": "def",
  "lexical_name": "boundedSubring",
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
  "slug": "boundedsubring--5f8673eefc7063bbe0d95043",
  "source": {
    "blob": "f4b6ffe568daa82ba3e0257c8f81e7881ca8f802",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 39,
    "path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierRepresentation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f8673eefc7063bbe0d95043e842472faf02bc307c830b1702affc960348d0a3",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef48911a1da8596601d7c596b7913c999067c9c6d548fde4aa7ea9c536180ed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundedSubring (X : Domain) : Subring (HolomorphicSection X) where
  carrier := {f | ∃ K : ℝ≥0, ∀ x : X.carrier, ‖(f : Section X) x‖ ≤ (K : ℝ)}
  zero_mem' := ⟨0, fun _ => by simp⟩
  one_mem' := ⟨1, fun _ => by simp⟩
  add_mem' := by
    rintro f g ⟨K, hK⟩ ⟨L, hL⟩
    refine ⟨K + L, fun x => ?_⟩
    exact (norm_add_le _ _).trans (add_le_add (hK x) (hL x))
  neg_mem' := by
    rintro f ⟨K, hK⟩
    refine ⟨K, fun x => ?_⟩
    change ‖-(f : Section X) x‖ ≤ (K : ℝ)
    simpa only [norm_neg] using hK x
  mul_mem' := by
    rintro f g ⟨K, hK⟩ ⟨L, hL⟩
    refine ⟨K * L, fun x => ?_⟩
    change ‖(f : Section X) x * (g : Section X) x‖ ≤ (K : ℝ) * (L : ℝ)
    rw [norm_mul]
    exact mul_le_mul (hK x) (hL x) (norm_nonneg _) K.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/HolomorphicMultiplierRepresentation.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4b6ffe568daa82ba3e0257c8f81e7881ca8f802` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
