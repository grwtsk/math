# prd11_lyapunovStrictDecrease

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aef33b3529f6513f9a08045056f8b648c60d9ac5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 781,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55f4815f-0b6d-0d9c-5548-6a805825d6d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6fab0949-493b-5cef-b7ba-f78f964da5bf",
  "kind": "theorem",
  "lexical_name": "prd11_lyapunovStrictDecrease",
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
  "slug": "prd11-lyapunovstrictdecrease--4a7c531e70f9e113573b5e1f",
  "source": {
    "blob": "aef33b3529f6513f9a08045056f8b648c60d9ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 795,
    "line": 781,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a7c531e70f9e113573b5e1f6ac1fc3f23adc9ecc72cab80aa23d05fd1068fd1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fab0949-493b-5cef-b7ba-f78f964da5bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 781–795.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prd11_lyapunovStrictDecrease
    {State : Type*} [NormedAddCommGroup State]
    (certificate : LyapunovDecreaseCertificate State)
    {state : State} (stateNonzero : state ≠ 0) :
    certificate.lyapunov (certificate.transition state) <
      certificate.lyapunov state := by
  have normPositive : 0 < ‖state‖ := norm_pos_iff.mpr stateNonzero
  have squarePositive : 0 < ‖state‖ ^ 2 := sq_pos_of_pos normPositive
  have positiveProduct : 0 < certificate.decreaseGain * ‖state‖ ^ 2 :=
    mul_pos certificate.decreaseGainPositive squarePositive
  have negative : -certificate.decreaseGain * ‖state‖ ^ 2 < 0 := by
    linarith
  linarith [certificate.oneStepDecrease state]

/-- Realizable constraints and convergence stay explicit hypotheses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean#L781).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aef33b3529f6513f9a08045056f8b648c60d9ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
