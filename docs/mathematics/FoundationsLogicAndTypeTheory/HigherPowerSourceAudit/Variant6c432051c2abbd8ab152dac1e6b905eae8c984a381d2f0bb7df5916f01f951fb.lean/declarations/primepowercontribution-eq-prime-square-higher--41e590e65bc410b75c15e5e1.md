# primePowerContribution_eq_prime_square_higher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dfed823c9eac1700c9c2d64f17723188a68d07d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f470126-7242-41e8-c269-588ead2ab82d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc1c6b9b-0f26-a1d2-96d2-7978fa912514",
  "kind": "theorem",
  "lexical_name": "primePowerContribution_eq_prime_square_higher",
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
  "slug": "primepowercontribution-eq-prime-square-higher--41e590e65bc410b75c15e5e1",
  "source": {
    "blob": "dfed823c9eac1700c9c2d64f17723188a68d07d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41e590e65bc410b75c15e5e155158bda987b812dc0bb73caf5683d42d60e5e8e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc1c6b9b-0f26-a1d2-96d2-7978fa912514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primePowerContribution_eq_prime_square_higher (A : ℝ) :
    primePowerContribution explicitSecondDerivative A =
      PrimeSector.primeContribution A + primeSquareContribution A + higherPrimePowerContribution A := by
  rw [PrimeSector.prime_power_contribution_eq,
    properPrimePowerContribution_eq_square_add_higher]
  ring

/-- Prime two's cube belongs to the higher sector, rather than the square sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfed823c9eac1700c9c2d64f17723188a68d07d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
