# actual_integer_class_mellin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7759639e-9584-94c4-1c01-91a2ac1f29c9",
  "kind": "theorem",
  "lexical_name": "actual_integer_class_mellin",
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
  "slug": "actual-integer-class-mellin--ba839d88c3906db3d5507273",
  "source": {
    "blob": "d3ae5fb3c5a2a66cb7cb75b3c9be24e47b544c95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 111,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant6f756b6baba293316de642c243963395b44cd9b29f4482a6a96e00a0ecad3357.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba839d88c3906db3d5507273e7b84a9b7bad72b3e0e1b26d57098230d922083f",
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

Occurrence: `result:7759639e-9584-94c4-1c01-91a2ac1f29c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_integer_class_mellin (A : ℝ) (hA : 1 ≤ A)
    (n : {n : ℕ // 0 < n}) (s : ℂ) :
    mellin (integerOrbit A hA n) s =
      (n.val:ℂ)^((1:ℂ)/2-s) * mellin (actualComplexOperator A) s := by
  simpa only [integerOrbit,Complex.ofReal_natCast] using
    actual_dilated_class_mellin A hA (n.val:ℝ) (by exact_mod_cast n.property) s

end ContinuousResearch.ActualMellinDilation

/- Complete public type, proof and transitive trusted closure audits. -/

#check ContinuousResearch.ActualMellinDilation.mellinConvergent_unnormalized
#print axioms ContinuousResearch.ActualMellinDilation.mellinConvergent_unnormalized
#print ContinuousResearch.ActualMellinDilation.mellinConvergent_unnormalized

#check ContinuousResearch.ActualMellinDilation.mellinConvergent_normalized
#print axioms ContinuousResearch.ActualMellinDilation.mellinConvergent_normalized
#print ContinuousResearch.ActualMellinDilation.mellinConvergent_normalized

#check ContinuousResearch.ActualMellinDilation.sqrt_cpow
#print axioms ContinuousResearch.ActualMellinDilation.sqrt_cpow
#print ContinuousResearch.ActualMellinDilation.sqrt_cpow

#check ContinuousResearch.ActualMellinDilation.mellin_normalized_func
#print axioms ContinuousResearch.ActualMellinDilation.mellin_normalized_func
#print ContinuousResearch.ActualMellinDilation.mellin_normalized_func

#check ContinuousResearch.ActualMellinDilation.actual_unnormalized_mellinConvergent
#print axioms ContinuousResearch.ActualMellinDilation.actual_unnormalized_mellinConvergent
#print ContinuousResearch.ActualMellinDilation.actual_unnormalized_mellinConvergent

#check ContinuousResearch.ActualMellinDilation.actual_normalized_mellinConvergent
#print axioms ContinuousResearch.ActualMellinDilation.actual_normalized_mellinConvergent
#print ContinuousResearch.ActualMellinDilation.actual_normalized_mellinConvergent

#check ContinuousResearch.ActualMellinDilation.actual_unnormalized_mellin
#print axioms ContinuousResearch.ActualMellinDilation.actual_unnormalized_mellin
#print ContinuousResearch.ActualMellinDilation.actual_unnormalized_mellin

#check ContinuousResearch.ActualMellinDilation.actual_normalized_mellin
#print axioms ContinuousResearch.ActualMellinDilation.actual_normalized_mellin
#print ContinuousResearch.ActualMellinDilation.actual_normalized_mellin

#check ContinuousResearch.ActualMellinDilation.actual_unnormalized_class_mellinConvergent
#print axioms ContinuousResearch.ActualMellinDilation.actual_unnormalized_class_mellinConvergent
#print ContinuousResearch.ActualMellinDilation.actual_unnormalized_class_mellinConvergent

#check ContinuousResearch.ActualMellinDilation.actual_unnormalized_class_mellin
#print axioms ContinuousResearch.ActualMellinDilation.actual_unnormalized_class_mellin
#print ContinuousResearch.ActualMellinDilation.actual_unnormalized_class_mellin

#check ContinuousResearch.ActualMellinDilation.actual_dilated_class_mellinConvergent
#print axioms ContinuousResearch.ActualMellinDilation.actual_dilated_class_mellinConvergent
#print ContinuousResearch.ActualMellinDilation.actual_dilated_class_mellinConvergent

#check ContinuousResearch.ActualMellinDilation.actual_dilated_class_mellin
#print axioms ContinuousResearch.ActualMellinDilation.actual_dilated_class_mellin
#print ContinuousResearch.ActualMellinDilation.actual_dilated_class_mellin

#check ContinuousResearch.ActualMellinDilation.actual_integer_class_mellin
#print axioms ContinuousResearch.ActualMellinDilation.actual_integer_class_mellin
#print ContinuousResearch.ActualMellinDilation.actual_integer_class_mellin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant6f756b6baba293316de642c243963395b44cd9b29f4482a6a96e00a0ecad3357.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant6f756b6baba293316de642c243963395b44cd9b29f4482a6a96e00a0ecad3357.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3ae5fb3c5a2a66cb7cb75b3c9be24e47b544c95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
