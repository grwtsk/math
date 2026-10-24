# convergent_of_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7205395f-05b0-56ee-a234-24a7766a1105",
  "kind": "theorem",
  "lexical_name": "convergent_of_int",
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
  "slug": "convergent-of-int--f62f8e0a9875188bddea6569",
  "source": {
    "blob": "1fefffd0d1f9f27fec2b4fbc7911a7592389611e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 375,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f62f8e0a9875188bddea6569d54992034fe77ff8fa13bf4bdc3d9505bedeb776",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7205395f-05b0-56ee-a234-24a7766a1105`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convergent_of_int {ξ : ℤ} (n : ℕ) : convergent ξ n = ξ := by
  cases n
  · simp only [Nat.zero_eq, convergent_zero, floor_intCast]
  · simp only [convergent_succ, floor_intCast, fract_intCast, convergent_of_zero, add_zero,
      inv_zero]
#align real.convergent_of_int Real.convergent_of_int

/-!
Our `convergent`s agree with `GeneralizedContinuedFraction.convergents`.
-/


open GeneralizedContinuedFraction

/-- The `n`th convergent of the `GeneralizedContinuedFraction.of ξ`
agrees with `ξ.convergent n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fefffd0d1f9f27fec2b4fbc7911a7592389611e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
