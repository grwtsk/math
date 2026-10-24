# negativeSmoothMoment_eq_tail_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8e4d413-2630-ed08-0b61-a4a4c79bd54e",
  "kind": "theorem",
  "lexical_name": "negativeSmoothMoment_eq_tail_pairing",
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
  "slug": "negativesmoothmoment-eq-tail-pairing--dccedbaae22150e988e5aa5a",
  "source": {
    "blob": "331617700fa009d57b853c1cbdff9680ab09feaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Variant5d7b6b0a436b5b345a7fc1abba839393f93926bdd95778da7940eca1c5801958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dccedbaae22150e988e5aa5a36a61b451c94b662353c9b20b238964b3369b3db",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Variant5d7b6b0a436b5b345a7fc1abba839393f93926bdd95778da7940eca1c5801958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8e4d413-2630-ed08-0b61-a4a4c79bd54e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeSmoothMoment_eq_tail_pairing {A : ℝ} (hA : 0 < A) :
    negativeSmoothMoment A = ∫ x : ℝ, normalizedTest explicitSecondDerivative A x *
      (Real.exp (x/2) * ∫ u in Ici x, Real.exp (-u/2) *
        normalizedTest explicitSecondDerivative A u) := by
  rw [negativeSmoothMoment_eq_forward_integral hA]
  apply integral_congr_ae
  filter_upwards [] with x
  exact forwardHalfKernel_interval_eq_tail_pairing hA x

end

end FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Variant5d7b6b0a436b5b345a7fc1abba839393f93926bdd95778da7940eca1c5801958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Variant5d7b6b0a436b5b345a7fc1abba839393f93926bdd95778da7940eca1c5801958.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `331617700fa009d57b853c1cbdff9680ab09feaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
