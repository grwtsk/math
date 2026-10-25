# verify_strict_lower_bound_Icc_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1293cf46-1ade-88e9-2b53-ae8ff162f05e",
  "kind": "theorem",
  "lexical_name": "verify_strict_lower_bound_Icc_split",
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
  "slug": "verify-strict-lower-bound-icc-split--e5d3b8475732bdbc4adcc0ab",
  "source": {
    "blob": "e39c216014be3964cddcd2f052fa763c4d4fd8ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 203,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant3ddcc52965aad0cd4d062d0380c2212270c7c19146c39ff8e35ccd84f431ad8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5d3b8475732bdbc4adcc0ab0fe50f19c5e2b3200b4e478cd1469fa9de44e7f1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant3ddcc52965aad0cd4d062d0380c2212270c7c19146c39ff8e35ccd84f431ad8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1293cf46-1ade-88e9-2b53-ae8ff162f05e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_strict_lower_bound_Icc_split (e : Expr) (hsupp : ExprSupportedCore e)
    (lo hi : ℚ) (hle : lo ≤ hi) (c : ℚ) (cfg : EvalConfig)
    (h_left : checkStrictLowerBound e (splitMid ⟨lo, hi, hle⟩).1 c cfg = true)
    (h_right : checkStrictLowerBound e (splitMid ⟨lo, hi, hle⟩).2 c cfg = true) :
    ∀ x ∈ Set.Icc (lo : ℝ) (hi : ℝ), c < Expr.eval (fun _ => x) e := by
  intro x hx
  have := verify_strict_lower_bound_split e hsupp ⟨lo, hi, hle⟩ c cfg h_left h_right
  apply this
  rwa [IntervalRat.mem_iff_mem_Icc]

/-! ### General Split Theorems

These theorems work with arbitrary split points, not just midpoints.
Useful for adaptive subdivision algorithms.
-/

/-- Any x in [lo, hi] is in [lo, mid] or [mid, hi] for any mid in between -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant3ddcc52965aad0cd4d062d0380c2212270c7c19146c39ff8e35ccd84f431ad8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant3ddcc52965aad0cd4d062d0380c2212270c7c19146c39ff8e35ccd84f431ad8c.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e39c216014be3964cddcd2f052fa763c4d4fd8ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
