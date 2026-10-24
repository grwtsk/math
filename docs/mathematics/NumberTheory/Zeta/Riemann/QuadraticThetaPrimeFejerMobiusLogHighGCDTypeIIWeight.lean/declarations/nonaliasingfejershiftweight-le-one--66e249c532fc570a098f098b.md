# nonAliasingFejerShiftWeight_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20694500-781a-1d16-68b4-380e372c31b3",
  "kind": "theorem",
  "lexical_name": "nonAliasingFejerShiftWeight_le_one",
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
  "slug": "nonaliasingfejershiftweight-le-one--66e249c532fc570a098f098b",
  "source": {
    "blob": "29130ffb1b08afe4da29860f267cd0d827f700d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 30,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66e249c532fc570a098f098b64bdddc7d9185d005f87aa009f45da211ef8f9a4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20694500-781a-1d16-68b4-380e372c31b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonAliasingFejerShiftWeight_le_one
    {X N m h n : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hn : n ∈ Finset.Ioc (2 * X) (4 * X - h)) :
    nonAliasingFejerShiftWeight X N m h n ≤ 1 := by
  have hnI := Finset.mem_Ioc.mp hn
  have hnOctave : n ∈ Finset.Ioc (2 * X) (4 * X) :=
    Finset.mem_Ioc.mpr
      ⟨hnI.1, hnI.2.trans (Nat.sub_le _ _)⟩
  have hnhOctave :
      n + h ∈ Finset.Ioc (2 * X) (4 * X) :=
    Finset.mem_Ioc.mpr ⟨by omega, by omega⟩
  have hn0 :=
    nonAliasingFejerPrefixWeight_nonnegative
      hreg hm0 hm1 hnOctave
  have hn1 :=
    nonAliasingFejerPrefixWeight_le_one
      hreg hm0 hm1 hnOctave
  have hnh0 :=
    nonAliasingFejerPrefixWeight_nonnegative
      hreg hm0 hm1 hnhOctave
  have hnh1 :=
    nonAliasingFejerPrefixWeight_le_one
      hreg hm0 hm1 hnhOctave
  unfold nonAliasingFejerShiftWeight
  calc
    nonAliasingFejerPrefixWeight X N m n *
        nonAliasingFejerPrefixWeight X N m (n + h)
      ≤ 1 * nonAliasingFejerPrefixWeight X N m (n + h) :=
        mul_le_mul_of_nonneg_right hn1 hnh0
    _ ≤ 1 * 1 := mul_le_mul_of_nonneg_left hnh1 (by norm_num)
    _ = 1 := by ring

/-- A genuine active Möbius-log divisor term is bounded by the octave
logarithm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29130ffb1b08afe4da29860f267cd0d827f700d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
