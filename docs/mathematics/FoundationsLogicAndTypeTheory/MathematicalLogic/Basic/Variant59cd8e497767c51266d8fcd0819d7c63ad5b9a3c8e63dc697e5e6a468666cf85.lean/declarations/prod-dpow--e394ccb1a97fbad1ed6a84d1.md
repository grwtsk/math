# prod_dpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:636f0a3b-5d98-9f96-7b0a-6fd35721f59a",
  "kind": "theorem",
  "lexical_name": "prod_dpow",
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
  "slug": "prod-dpow--e394ccb1a97fbad1ed6a84d1",
  "source": {
    "blob": "40a37271f5c48a59ed8e1eee4145d77ee9b7daed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 273,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e394ccb1a97fbad1ed6a84d11fa88d5863db3593e51cb228c595dea1dfaf3a18",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:636f0a3b-5d98-9f96-7b0a-6fd35721f59a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_dpow {ι : Type*} {s : Finset ι} {n : ι → ℕ} (ha : a ∈ I) :
    (s.prod fun i ↦ hI.dpow (n i) a) = multinomial s n * hI.dpow (s.sum n) a := by
  classical
  induction s using Finset.induction with
  | empty =>
    simp only [prod_empty, multinomial_empty, cast_one, sum_empty, one_mul]
    rw [hI.dpow_zero ha]
  | insert _ _ hi hrec =>
    rw [prod_insert hi, hrec, ← mul_assoc, mul_comm (hI.dpow (n _) a),
      mul_assoc, hI.mul_dpow ha, ← sum_insert hi, ← mul_assoc]
    apply congr_arg₂ _ _ rfl
    rw [multinomial_insert hi, mul_comm, cast_mul, sum_insert hi]

-- TODO : can probably be simplified using `DividedPowers.exp`

/-- Lemma towards `dpow_sum` when we only have partial information on a divided power ideal -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a37271f5c48a59ed8e1eee4145d77ee9b7daed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
