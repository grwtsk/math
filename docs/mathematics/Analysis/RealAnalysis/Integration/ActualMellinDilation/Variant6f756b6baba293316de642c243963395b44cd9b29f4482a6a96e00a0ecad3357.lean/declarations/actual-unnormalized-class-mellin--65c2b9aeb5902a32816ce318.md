# actual_unnormalized_class_mellin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ed29c9f-d074-fcdb-eca6-0f8555f8d64b",
  "kind": "theorem",
  "lexical_name": "actual_unnormalized_class_mellin",
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
  "slug": "actual-unnormalized-class-mellin--65c2b9aeb5902a32816ce318",
  "source": {
    "blob": "d3ae5fb3c5a2a66cb7cb75b3c9be24e47b544c95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant6f756b6baba293316de642c243963395b44cd9b29f4482a6a96e00a0ecad3357.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65c2b9aeb5902a32816ce3186f18a2d03e410749075de2c51f0406a2eecc7704",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant6f756b6baba293316de642c243963395b44cd9b29f4482a6a96e00a0ecad3357.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ed29c9f-d074-fcdb-eca6-0f8555f8d64b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_unnormalized_class_mellin (A : ℝ) (hA : 1 ≤ A)
    (a : ℝ) (ha : 0 < a) (s : ℂ) :
    mellin (unnormalized a ha (actualComplexL2 A hA)) s =
      (a:ℂ)^(-s) * mellin (actualComplexOperator A) s := by
  rw [←actual_unnormalized_mellin A a ha s]
  apply integral_congr_ae
  filter_upwards [unnormalized_ae a ha (actualComplexL2 A hA),
    (positive_mul_quasi ha).ae_eq_comp (actualComplexL2_ae A hA)] with x hk hp
  exact congrArg (fun z : ℂ => (x:ℂ)^(s-1) • z) (hk.trans hp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant6f756b6baba293316de642c243963395b44cd9b29f4482a6a96e00a0ecad3357.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant6f756b6baba293316de642c243963395b44cd9b29f4482a6a96e00a0ecad3357.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3ae5fb3c5a2a66cb7cb75b3c9be24e47b544c95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
