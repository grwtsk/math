# smul_inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56792249-5570-f887-5816-9efb10ad2cb3",
  "kind": "theorem",
  "lexical_name": "smul_inf",
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
  "slug": "smul-inf--4c207a8ad195798bbcce7636",
  "source": {
    "blob": "9a21947520209d1952d4e4cdb6de9a5ea55a06c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 471,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c207a8ad195798bbcce76368acd845e58fbfcd78c7362316b9c8842d7138299",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56792249-5570-f887-5816-9efb10ad2cb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_inf [SMul R ℝ] [SMul R ℝ≥0] [IsScalarTower R ℝ≥0 ℝ] (r : R) (p q : Seminorm 𝕜 E) :
    r • (p ⊓ q) = r • p ⊓ r • q := by
  ext
  simp_rw [smul_apply, inf_apply, smul_apply, ← smul_one_smul ℝ≥0 r (_ : ℝ), NNReal.smul_def,
    smul_eq_mul, Real.mul_iInf_of_nonneg (NNReal.coe_nonneg _), mul_add]

section Classical

open scoped Classical in
/-- We define the supremum of an arbitrary subset of `Seminorm 𝕜 E` as follows:
* if `s` is `BddAbove` *as a set of functions `E → ℝ`* (that is, if `s` is pointwise bounded
  above), we take the pointwise supremum of all elements of `s`, and we prove that it is indeed a
  seminorm.
* otherwise, we take the zero seminorm `⊥`.

There are two things worth mentioning here:
* First, it is not trivial at first that `s` being bounded above *by a function* implies
  being bounded above *as a seminorm*. We show this in `Seminorm.bddAbove_iff` by using
  that the `Sup s` as defined here is then a bounding seminorm for `s`. So it is important to make
  the case disjunction on `BddAbove ((↑) '' s : Set (E → ℝ))` and not `BddAbove s`.
* Since the pointwise `Sup` already gives `0` at points where a family of functions is
  not bounded above, one could hope that just using the pointwise `Sup` would work here, without the
  need for an additional case disjunction. As discussed on Zulip, this doesn't work because this can
  give a function which does *not* satisfy the seminorm axioms (typically sub-additivity).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a21947520209d1952d4e4cdb6de9a5ea55a06c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
