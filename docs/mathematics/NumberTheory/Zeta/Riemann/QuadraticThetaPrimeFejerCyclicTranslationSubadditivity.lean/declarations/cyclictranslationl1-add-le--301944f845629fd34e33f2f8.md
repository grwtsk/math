# cyclicTranslationL1_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7bb356e-270f-1512-ff94-491e3c96a6f5",
  "kind": "theorem",
  "lexical_name": "cyclicTranslationL1_add_le",
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
  "slug": "cyclictranslationl1-add-le--301944f845629fd34e33f2f8",
  "source": {
    "blob": "98650995823c6291507b2d5277fc32f4154694e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 22,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:301944f845629fd34e33f2f8ad1c5dbc574c2d66fa938581c053fe0ac7299ede",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7bb356e-270f-1512-ff94-491e3c96a6f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicTranslationL1_add_le
    {L : ℕ}
    (f : ZMod L → ℝ)
    (r s : ZMod L) :
    cyclicTranslationL1 f (r + s) ≤
      cyclicTranslationL1 f r + cyclicTranslationL1 f s := by
  unfold cyclicTranslationL1
  have hpoint :
      ∀ x : ZMod L,
        |f x - f (x - (r + s))| ≤
          |f x - f (x - r)| +
          |f (x - r) - f ((x - r) - s)| := by
    intro x
    simpa [sub_eq_add_neg, add_assoc, add_comm, add_left_comm] using
      abs_sub_le (f x) (f (x - r)) (f ((x - r) - s))
  calc
    (∑ x : ZMod L, |f x - f (x - (r + s))|)
      ≤
      ∑ x : ZMod L,
        (|f x - f (x - r)| +
          |f (x - r) - f ((x - r) - s)|) := by
            exact Finset.sum_le_sum fun x hx => hpoint x
    _ =
      (∑ x : ZMod L, |f x - f (x - r)|) +
      (∑ x : ZMod L,
        |f (x - r) - f ((x - r) - s)|) := by
          rw [Finset.sum_add_distrib]
    _ =
      (∑ x : ZMod L, |f x - f (x - r)|) +
      (∑ y : ZMod L, |f y - f (y - s)|) := by
          congr 1
          let e : ZMod L ≃ ZMod L := {
            toFun := fun x => x - r
            invFun := fun y => y + r
            left_inv := by intro x; simp
            right_inv := by intro y; simp
          }
          exact Fintype.sum_equiv e _ _ (by
            intro x
            simp [e])
    _ = _ := rfl

/-- Natural-multiple telescoping from subadditivity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98650995823c6291507b2d5277fc32f4154694e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
