# one_le_centeredMobiusLogAbsoluteLowGCDPairBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de1357c3-5fe4-9ce6-b9f8-c50b3a5fac2e",
  "kind": "theorem",
  "lexical_name": "one_le_centeredMobiusLogAbsoluteLowGCDPairBlock",
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
  "slug": "one-le-centeredmobiuslogabsolutelowgcdpairblock--775e8531eb1357ca46eff8a5",
  "source": {
    "blob": "3850d5ace477943031d8c81a97a8628652b60096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 281,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:775e8531eb1357ca46eff8a50e63d63b42d559c22dbf1f9b1b5286ceedc4cd12",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de1357c3-5fe4-9ce6-b9f8-c50b3a5fac2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_le_centeredMobiusLogAbsoluteLowGCDPairBlock
    {n h Y : ℕ}
    (hh : 0 < h)
    (hY : 1 ≤ Y) :
    1 ≤ centeredMobiusLogAbsoluteLowGCDPairBlock n h Y := by
  have hpair :=
    centeredMobiusLog_none_none_mem_gcd_one_class n h
  have hlow :=
    one_mem_centeredMobiusLogLowGCDSet hh hY
  calc
    (1 : ℝ)
      =
      |centeredMobiusLogDivisorTerm n none *
        centeredMobiusLogDivisorTerm (n + h) none| := by
          simp
    _ ≤
      centeredMobiusLogAbsolutePairGCDClassBlock n h 1 := by
        unfold centeredMobiusLogAbsolutePairGCDClassBlock
        exact Finset.single_le_sum
          (fun uv huv => abs_nonneg _) hpair
    _ ≤ centeredMobiusLogAbsoluteLowGCDPairBlock n h Y := by
        unfold centeredMobiusLogAbsoluteLowGCDPairBlock
        exact Finset.single_le_sum
          (fun g hg =>
            centeredMobiusLogAbsolutePairGCDClassBlock_nonnegative
              n h g)
          hlow

/-- Fejér weight product attached to one shifted pair. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3850d5ace477943031d8c81a97a8628652b60096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
