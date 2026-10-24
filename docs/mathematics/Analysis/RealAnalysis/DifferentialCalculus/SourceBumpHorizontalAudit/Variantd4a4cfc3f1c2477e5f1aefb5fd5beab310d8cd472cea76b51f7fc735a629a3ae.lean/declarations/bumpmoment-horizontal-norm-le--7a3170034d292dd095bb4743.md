# bumpMoment_horizontal_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e232715b4b719d5bf81aca475e1c1b2cc1e043c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 457,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24ba8c30-179d-f8c2-7d69-b524b1d24372",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25ee8066-77cf-7031-7967-c370784f42b4",
  "kind": "theorem",
  "lexical_name": "bumpMoment_horizontal_norm_le",
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
  "slug": "bumpmoment-horizontal-norm-le--7a3170034d292dd095bb4743",
  "source": {
    "blob": "e232715b4b719d5bf81aca475e1c1b2cc1e043c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 457,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a3170034d292dd095bb4743c0276037aee2ee405fe6e5a89e5ea0963ed80d12",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25ee8066-77cf-7031-7967-c370784f42b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpMoment_horizontal_norm_le (ε t : ℝ) (hε : 0 ≤ ε) :
    ‖bumpMoment 0 ((t : ℂ) * Complex.I)‖ ≤
      ‖bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I)‖ := by
  simpa only [Complex.ofReal_zero, zero_add] using
    bumpMoment_horizontal_norm_monotone t (show (0 : ℝ) ∈ Ici 0 from by simp)
      (show ε ∈ Ici 0 from hε) hε

end
end SourceBumpHorizontalScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @SourceBumpHorizontalScratch.radial_boundary_energy_identity
#print SourceBumpHorizontalScratch.radial_boundary_energy_identity
#print axioms SourceBumpHorizontalScratch.radial_boundary_energy_identity
#check @SourceBumpHorizontalScratch.bumpMoment_derivative_pairing_nonneg
#print SourceBumpHorizontalScratch.bumpMoment_derivative_pairing_nonneg
#print axioms SourceBumpHorizontalScratch.bumpMoment_derivative_pairing_nonneg
#check @SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_sq_hasDerivAt
#print SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_sq_hasDerivAt
#print axioms SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_sq_hasDerivAt
#check @SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_monotone
#print SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_monotone
#print axioms SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_monotone
#check @SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_le
#print SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_le
#print axioms SourceBumpHorizontalScratch.bumpMoment_horizontal_norm_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e232715b4b719d5bf81aca475e1c1b2cc1e043c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
