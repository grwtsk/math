# kernelVector_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:939ca73c-04f4-380f-e145-a90e52871dd0",
  "kind": "theorem",
  "lexical_name": "kernelVector_injective",
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
  "slug": "kernelvector-injective--fa13f57942904a58fe48e13b",
  "source": {
    "blob": "e1c099a9b38e99449e5a779e935200925bf8adba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 31,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/A8343437401bfa85c/Variant2340cbcfcc3c304695eca9cdd2ff48e3feccecc82e964bf4f7169c6b8f9accb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa13f57942904a58fe48e13ba5def0d5ac70b145cfa300a6452b43b6b754486f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/A8343437401bfa85c/Variant2340cbcfcc3c304695eca9cdd2ff48e3feccecc82e964bf4f7169c6b8f9accb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:939ca73c-04f4-380f-e145-a90e52871dd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernelVector_injective
    [DecidableEq Index]
    (semantic : Kernel.PositiveKernel Index)
    (epsilon : ℝ)
    (epsilonPositive : 0 < epsilon) :
    Function.Injective
      (kernelVector
        (regularizedKernel semantic epsilon epsilonPositive)) :=
  kernelVector_injective_of_posDef _ <|
    regularizedKernel_posDef semantic epsilon epsilonPositive

section Kronecker

variable [DecidableEq Index]

end Kronecker

end Mathematics.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/A8343437401bfa85c/Variant2340cbcfcc3c304695eca9cdd2ff48e3feccecc82e964bf4f7169c6b8f9accb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/A8343437401bfa85c/Variant2340cbcfcc3c304695eca9cdd2ff48e3feccecc82e964bf4f7169c6b8f9accb4.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1c099a9b38e99449e5a779e935200925bf8adba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
