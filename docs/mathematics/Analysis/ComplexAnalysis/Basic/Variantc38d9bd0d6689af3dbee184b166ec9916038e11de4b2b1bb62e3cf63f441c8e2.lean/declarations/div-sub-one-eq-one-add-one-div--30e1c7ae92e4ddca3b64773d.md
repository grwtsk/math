# div_sub_one_eq_one_add_one_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86067207-31cc-e2aa-bf28-bb391afd488d",
  "kind": "theorem",
  "lexical_name": "div_sub_one_eq_one_add_one_div",
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
  "slug": "div-sub-one-eq-one-add-one-div--30e1c7ae92e4ddca3b64773d",
  "source": {
    "blob": "eb7ea1d4994a6c165ce2b7457e7d75395887efd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 29,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Basic/Variantc38d9bd0d6689af3dbee184b166ec9916038e11de4b2b1bb62e3cf63f441c8e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30e1c7ae92e4ddca3b64773df10b8eafa71c0badf86b7957030a1107ef2aecb4",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Basic/Variantc38d9bd0d6689af3dbee184b166ec9916038e11de4b2b1bb62e3cf63f441c8e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86067207-31cc-e2aa-bf28-bb391afd488d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_sub_one_eq_one_add_one_div (z : ℂ) (hz : z ≠ 1) : z / (z - 1) = 1 + (z - 1)⁻¹ := by
  have h : z - 1 ≠ 0 := sub_ne_zero.mpr hz
  calc
    z / (z - 1) = ((z - 1) + 1) / (z - 1) := by ring_nf
    _ = (z - 1) / (z - 1) + 1 / (z - 1) := by rw [add_div]
    _ = 1 + (z - 1)⁻¹ := by simp [div_eq_mul_inv, h]

/-- A continuous complex-valued function is bounded on a closed ball. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Basic/Variantc38d9bd0d6689af3dbee184b166ec9916038e11de4b2b1bb62e3cf63f441c8e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Basic/Variantc38d9bd0d6689af3dbee184b166ec9916038e11de4b2b1bb62e3cf63f441c8e2.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb7ea1d4994a6c165ce2b7457e7d75395887efd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
