# actual_dilated_class_mellinConvergent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:deb8722b-4476-6af4-9017-9ee88b1fb50a",
  "kind": "theorem",
  "lexical_name": "actual_dilated_class_mellinConvergent",
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
  "slug": "actual-dilated-class-mellinconvergent--d50caae45ae20a2a0cfeb06a",
  "source": {
    "blob": "87d6376142bbad14b66b14485d9ed4a8b50b6330",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 67,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant0b3e16cf3be5bf249278c01672cbf66b1f8edc913cf76266a3ff8d943fa3e585.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d50caae45ae20a2a0cfeb06a686b8cb9d68093909ba01dcd658d5d9858694f5e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant0b3e16cf3be5bf249278c01672cbf66b1f8edc913cf76266a3ff8d943fa3e585.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:deb8722b-4476-6af4-9017-9ee88b1fb50a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_dilated_class_mellinConvergent (A : ℝ) (hA : 1 ≤ A)
    (a : ℝ) (ha : 0 < a) {s : ℂ} (hs : 0 < s.re) :
    MellinConvergent (dilate a ha (actualComplexL2 A hA)) s := by
  apply (actual_normalized_mellinConvergent hA ha hs).congr
  filter_upwards [dilate_actual_ae A hA a ha] with x hx
  exact congrArg (fun z : ℂ => (x:ℂ)^(s-1) • z) hx.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant0b3e16cf3be5bf249278c01672cbf66b1f8edc913cf76266a3ff8d943fa3e585.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant0b3e16cf3be5bf249278c01672cbf66b1f8edc913cf76266a3ff8d943fa3e585.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87d6376142bbad14b66b14485d9ed4a8b50b6330` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
