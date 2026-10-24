# eq_cuspFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:554dee8a-af5b-e284-0577-f00779a1ddc5",
  "kind": "theorem",
  "lexical_name": "eq_cuspFunction",
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
  "slug": "eq-cuspfunction--e1c43a2522b0b27e78d310c7",
  "source": {
    "blob": "d59faa7120a46b387099af2e9af3b191c65bef14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant38b1b3f309b575d9c2692d2ce1a56d5ef47ca9e2f26130372fbe0c4de5f99fb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1c43a2522b0b27e78d310c7cb716db124f8e4dabcc564663f7df839c7ff9320",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant38b1b3f309b575d9c2692d2ce1a56d5ef47ca9e2f26130372fbe0c4de5f99fb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:554dee8a-af5b-e284-0577-f00779a1ddc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_cuspFunction (hh : h ≠ 0) (hf : Periodic f h) (z : ℂ) :
    (cuspFunction h f) (𝕢 h z) = f z := by
  have : (cuspFunction h f) (𝕢 h z) = f (invQParam h (𝕢 h z)) := by
    rw [cuspFunction, update_of_ne, comp_apply]
    exact exp_ne_zero _
  obtain ⟨m, hm⟩ := qParam_left_inv_mod_period hh z
  simpa only [this, hm] using hf.int_mul m z

end PeriodicOnℂ

section HoloOnC

variable {h : ℝ} {f : ℂ → ℂ}

/--
Key technical lemma: the function `cuspFunction h f` is differentiable at the images of
differentiability points of `f` (even if `invQParam` is not differentiable there).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant38b1b3f309b575d9c2692d2ce1a56d5ef47ca9e2f26130372fbe0c4de5f99fb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant38b1b3f309b575d9c2692d2ce1a56d5ef47ca9e2f26130372fbe0c4de5f99fb5.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d59faa7120a46b387099af2e9af3b191c65bef14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
