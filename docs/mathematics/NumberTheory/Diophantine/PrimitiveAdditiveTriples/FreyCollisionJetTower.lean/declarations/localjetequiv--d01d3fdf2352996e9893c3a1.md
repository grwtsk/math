# localJetEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd563afe306bc0b436118c869ff9613cd8aaf65620f3a03319aa54f782721d98",
  "kind": "def",
  "lexical_name": "localJetEquiv",
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
  "slug": "localjetequiv--d01d3fdf2352996e9893c3a1",
  "source": {
    "blob": "83b3401f9b8b8b7a77572a768ca1acf99db4387a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 74,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d01d3fdf2352996e9893c3a1bd13ab12da138c4ee43c5ad3a09654f15210cb1d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd563afe306bc0b436118c869ff9613cd8aaf65620f3a03319aa54f782721d98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def localJetEquiv (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (hB : ¬ (2 : ℤ) ∣ (integerModel t).a₄) (N : ℕ) :
    SelectedJet t (algebraMap ℤ (LocalRing 2)) N ≃ₐ[LocalRing 2]
      FreyJetQuotient.Parameter (LocalRing 2) N := by
  have hu : IsUnit (algebraMap ℤ (LocalRing 2) (integerModel t).a₄) :=
    (int_unit_iff 2 _).mpr hB
  apply selectedJetEquiv t hd (algebraMap ℤ (LocalRing 2)) (↑hu.unit⁻¹) _ N
  rw [← hu.unit_spec]
  exact Units.mul_inv hu.unit

/-- Exactly the earlier local second-jet guard, now used for all orders. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83b3401f9b8b8b7a77572a768ca1acf99db4387a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
