# roundHalfUp_eq_of_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d7334f3bc59f957624c4c8f6c995b47d6214a69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59f0ab9d-ce9c-c9b6-7f72-54d86a99caed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9fc07637-f20c-87d3-53f8-79bf94bef81f",
  "kind": "theorem",
  "lexical_name": "roundHalfUp_eq_of_margin",
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
  "slug": "roundhalfup-eq-of-margin--dd2d80da5908a29bebd8d0c5",
  "source": {
    "blob": "2d7334f3bc59f957624c4c8f6c995b47d6214a69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd2d80da5908a29bebd8d0c53514f5c4dd78b10546b979d490cff1fc0ad21551",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fc07637-f20c-87d3-53f8-79bf94bef81f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem roundHalfUp_eq_of_margin
    {x y margin : Real}
    (_hmargin : 0 < margin)
    (hseparated : margin ≤ |x - (1 : Real) / 2|)
    (hclose : |y - x| < margin) :
    roundHalfUp y = roundHalfUp x := by
  by_cases hx : (1 : Real) / 2 ≤ x
  · have habsx : |x - (1 : Real) / 2| = x - (1 : Real) / 2 :=
      abs_of_nonneg (sub_nonneg.mpr hx)
    have hbelow : -|y - x| ≤ y - x := neg_abs_le (y - x)
    have hy : (1 : Real) / 2 ≤ y := by
      rw [habsx] at hseparated
      linarith
    unfold roundHalfUp
    calc
      decide ((1 : Real) / 2 ≤ y) = true := decide_eq_true hy
      _ = decide ((1 : Real) / 2 ≤ x) := (decide_eq_true hx).symm
  · have hxlt : x < (1 : Real) / 2 := lt_of_not_ge hx
    have habsx : |x - (1 : Real) / 2| = (1 : Real) / 2 - x := by
      rw [abs_of_nonpos (by linarith)]
      linarith
    have habove : y - x ≤ |y - x| := le_abs_self (y - x)
    have hy : y < (1 : Real) / 2 := by
      rw [habsx] at hseparated
      linarith
    have hynot : ¬ (1 : Real) / 2 ≤ y := not_le.mpr hy
    unfold roundHalfUp
    calc
      decide ((1 : Real) / 2 ≤ y) = false := decide_eq_false hynot
      _ = decide ((1 : Real) / 2 ≤ x) := (decide_eq_false hx).symm

/-- Pointwise perturbations below a positive uniform margin preserve the state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant8618970f9ec28ce2c99c1f64308048e7b76642e99ee00d65731f7425f870da22.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d7334f3bc59f957624c4c8f6c995b47d6214a69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
