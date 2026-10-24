# count_eligible_eq_residue_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f8ee1980d1dc64b45fc45b454199ba6683879e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0840c5b-631f-8da0-be1f-a0c06ec71fb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51e9cf9a-cf34-7678-621c-8c6b9eb08c78",
  "kind": "theorem",
  "lexical_name": "count_eligible_eq_residue_sum",
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
  "slug": "count-eligible-eq-residue-sum--9530b6b445ae17f2bd9a31a5",
  "source": {
    "blob": "9f8ee1980d1dc64b45fc45b454199ba6683879e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 95,
    "path": "GRWTSK/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9530b6b445ae17f2bd9a31a519551f4379ff393e3cabe113b89bd94e7dea306d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51e9cf9a-cf34-7678-621c-8c6b9eb08c78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_eligible_eq_residue_sum (n : ℕ) :
    Nat.count IsEligibleResidueSixPrime n =
      Nat.count IsResidueOnePrime n + Nat.count IsResidueFivePrime n := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [Nat.count_succ, Nat.count_succ, Nat.count_succ, ih]
      by_cases hOne : IsResidueOnePrime n
      · have hFive : ¬ IsResidueFivePrime n := by
          intro h
          exact residuePrime_disjoint n ⟨hOne, h⟩
        simp [IsEligibleResidueSixPrime, hOne, hFive]
        omega
      · by_cases hFive : IsResidueFivePrime n
        · simp [IsEligibleResidueSixPrime, hOne, hFive]
          omega
        · simp [IsEligibleResidueSixPrime, hOne, hFive]

/-- There are infinitely many eligible primes.  It is enough to use the
residue-one progression; its inclusion into the eligible union is explicit. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8ee1980d1dc64b45fc45b454199ba6683879e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
