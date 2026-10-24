# expSeries_eq_ofScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:718225f0-1a41-9128-f7fb-27edfeb70bc4",
  "kind": "theorem",
  "lexical_name": "expSeries_eq_ofScalars",
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
  "slug": "expseries-eq-ofscalars--498518e2b953b9149a8810d8",
  "source": {
    "blob": "dc9f9edd4a6d48a5baf0e9ceec0ec7b50cdaf42d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 119,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Varianta43ea8a161750ed4bfe00817b3c8788a7110a3685c0b2f6dc072de832fda584e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:498518e2b953b9149a8810d839fcca86f024b9012c37aec44183982f1e7e25ea",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exponential/Varianta43ea8a161750ed4bfe00817b3c8788a7110a3685c0b2f6dc072de832fda584e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:718225f0-1a41-9128-f7fb-27edfeb70bc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expSeries_eq_ofScalars : expSeries 𝕂 𝔸 = ofScalars 𝔸 fun n ↦ (n !⁻¹ : 𝕂) := by
  simp_rw [FormalMultilinearSeries.ext_iff, expSeries, ofScalars, implies_true]

variable {𝕂 𝔸}

open scoped Classical in
/-- `NormedSpace.exp : 𝔸 → 𝔸` is the exponential map. It is defined as the sum of the
`FormalMultilinearSeries` `expSeries ℚ 𝔸`.

If `𝔸` can't be equipped with a `ℚ`-algebra structure, we use the junk value `1`. For details on why
this approach is taken, see the module documentation for
`Mathlib/Analysis/Normed/Algebra/Exponential.lean`.

Note that when `𝔸 = Matrix n n 𝕂`, this is the **Matrix Exponential**; see
`Mathlib/Analysis/Normed/Algebra/MatrixExponential.lean` for lemmas
specific to that case. -/
noncomputable irreducible_def exp (x : 𝔸) : 𝔸 :=
  if h : Nonempty (Algebra ℚ 𝔸) then
    letI _ := h.some
    (NormedSpace.expSeries ℚ 𝔸).sum x
  else
    1

/-- The junk value when `𝔸` can't be equipped with a `ℚ`-algebra structure. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exponential/Varianta43ea8a161750ed4bfe00817b3c8788a7110a3685c0b2f6dc072de832fda584e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Varianta43ea8a161750ed4bfe00817b3c8788a7110a3685c0b2f6dc072de832fda584e.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc9f9edd4a6d48a5baf0e9ceec0ec7b50cdaf42d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
