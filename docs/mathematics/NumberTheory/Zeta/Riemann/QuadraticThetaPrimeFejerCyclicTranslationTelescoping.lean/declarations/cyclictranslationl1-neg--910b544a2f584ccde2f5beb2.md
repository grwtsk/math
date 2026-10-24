# cyclicTranslationL1_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4251e100-faf3-770c-ffd6-a72072d96e0e",
  "kind": "theorem",
  "lexical_name": "cyclicTranslationL1_neg",
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
  "slug": "cyclictranslationl1-neg--910b544a2f584ccde2f5beb2",
  "source": {
    "blob": "e61503c5f6164a695fc9ddd8197baacd92a0436c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 29,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:910b544a2f584ccde2f5beb201b8f5842be72a7544d274ea94950f35cb4fb402",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4251e100-faf3-770c-ffd6-a72072d96e0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicTranslationL1_neg
    {L : ℕ}
    (f : ZMod L → ℝ)
    (r : ZMod L) :
    cyclicTranslationL1 f (-r) =
      cyclicTranslationL1 f r := by
  unfold cyclicTranslationL1
  let e : ZMod L ≃ ZMod L := {
    toFun := fun x => x + r
    invFun := fun x => x - r
    left_inv := by intro x; simp
    right_inv := by intro x; simp
  }
  calc
    (∑ x : ZMod L, |f x - f (x - (-r))|)
      =
      ∑ y : ZMod L,
        |f (y + r) - f y| := by
          exact Fintype.sum_equiv e.symm _ _ (by
            intro y
            simp [e]
            ring_nf)
    _ =
      ∑ y : ZMod L,
        |f y - f (y - r)| := by
          apply Finset.sum_congr rfl
          intro y hy
          rw [abs_sub_comm]
          congr 2
          simp
    _ = _ := rfl

/-- The only local interval fact needed by the telescoping route: a one-step
cyclic translation changes at most two values of a single sharp interval
indicator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e61503c5f6164a695fc9ddd8197baacd92a0436c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
