# open_map_of_strict_fderiv_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c725cec7-01b9-170a-0ceb-623077a00eac",
  "kind": "theorem",
  "lexical_name": "open_map_of_strict_fderiv_equiv",
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
  "slug": "open-map-of-strict-fderiv-equiv--738daa2ae8fde8e9ecd58d45",
  "source": {
    "blob": "ab5a49dafead72d33ab58af04cee1e6e313909a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 709,
    "line": 688,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantf82807eca28e8ffdd6ef017d7ca27838d71ecf48c89cf092a071d840f9858478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:738daa2ae8fde8e9ecd58d456f72dcd03a037b78d80f14e7081adc78e820ca3d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantf82807eca28e8ffdd6ef017d7ca27838d71ecf48c89cf092a071d840f9858478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c725cec7-01b9-170a-0ceb-623077a00eac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 688–709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem open_map_of_strict_fderiv_equiv [CompleteSpace E] {f : E → F} {f' : E → E ≃L[𝕜] F}
    (hf : ∀ x, HasStrictFDerivAt f (f' x : E →L[𝕜] F) x) : IsOpenMap f :=
  isOpenMap_iff_nhds_le.2 fun x => (hf x).map_nhds_eq_of_equiv.ge
#align open_map_of_strict_fderiv_equiv open_map_of_strict_fderiv_equiv

/-!
### Inverse function theorem, 1D case

In this case we prove a version of the inverse function theorem for maps `f : 𝕜 → 𝕜`.
We use `ContinuousLinearEquiv.unitsEquivAut` to translate `HasStrictDerivAt f f' a` and
`f' ≠ 0` into `HasStrictFDerivAt f (_ : 𝕜 ≃L[𝕜] 𝕜) a`.
-/


namespace HasStrictDerivAt

variable [CompleteSpace 𝕜] {f : 𝕜 → 𝕜} {f' a : 𝕜} (hf : HasStrictDerivAt f f' a) (hf' : f' ≠ 0)

variable (f f' a)

/-- A function that is inverse to `f` near `a`. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantf82807eca28e8ffdd6ef017d7ca27838d71ecf48c89cf092a071d840f9858478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantf82807eca28e8ffdd6ef017d7ca27838d71ecf48c89cf092a071d840f9858478.lean#L688).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab5a49dafead72d33ab58af04cee1e6e313909a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
