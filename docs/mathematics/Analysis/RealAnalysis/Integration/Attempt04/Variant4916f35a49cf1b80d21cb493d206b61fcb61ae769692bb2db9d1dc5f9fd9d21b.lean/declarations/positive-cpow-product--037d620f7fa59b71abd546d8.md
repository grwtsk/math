# positive_cpow_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9da49a8c-7e80-9ef4-3e6f-808b5345c76d",
  "kind": "theorem",
  "lexical_name": "positive_cpow_product",
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
  "slug": "positive-cpow-product--037d620f7fa59b71abd546d8",
  "source": {
    "blob": "261d15edf01927a8a9d0950a086019cec7838bf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variant4916f35a49cf1b80d21cb493d206b61fcb61ae769692bb2db9d1dc5f9fd9d21b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:037d620f7fa59b71abd546d8fbc0a426d3be9ce9bc8425c1a7e2183f90ece6c2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt04/Variant4916f35a49cf1b80d21cb493d206b61fcb61ae769692bb2db9d1dc5f9fd9d21b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9da49a8c-7e80-9ef4-3e6f-808b5345c76d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem positive_cpow_product {s : ℂ} {x : ℝ} (hx : 0 < x) :
    (x : ℂ) * (x : ℂ) ^ (-(s + 1)) = (x : ℂ) ^ (-s) := by
  calc
    _ = (x : ℂ) ^ (1 : ℂ) * (x : ℂ) ^ (-(s + 1)) := by rw [cpow_one]
    _ = (x : ℂ) ^ (1 + -(s + 1)) :=
      (cpow_add (1 : ℂ) (-(s + 1)) (ofReal_ne_zero.mpr hx.ne')).symm
    _ = _ := by congr 1; ring

/-- Closed finite Abel retains the lower prime-power inventory and true Psi(7) boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt04/Variant4916f35a49cf1b80d21cb493d206b61fcb61ae769692bb2db9d1dc5f9fd9d21b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variant4916f35a49cf1b80d21cb493d206b61fcb61ae769692bb2db9d1dc5f9fd9d21b.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `261d15edf01927a8a9d0950a086019cec7838bf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
