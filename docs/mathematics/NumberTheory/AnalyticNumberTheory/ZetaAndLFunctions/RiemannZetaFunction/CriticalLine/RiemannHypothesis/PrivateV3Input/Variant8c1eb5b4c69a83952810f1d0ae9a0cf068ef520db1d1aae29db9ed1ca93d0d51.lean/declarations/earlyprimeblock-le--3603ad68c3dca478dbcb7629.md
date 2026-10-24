# earlyPrimeBlock_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e428bcd0-a17d-5fea-4f29-6def824abc31",
  "kind": "theorem",
  "lexical_name": "earlyPrimeBlock_le",
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
  "slug": "earlyprimeblock-le--3603ad68c3dca478dbcb7629",
  "source": {
    "blob": "b8f59ed8817df53cf52f1946dc7bfd850045ff30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3603ad68c3dca478dbcb7629eaf5ce81ea63b006bb4e0cb1313a2ce01ee0a22f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e428bcd0-a17d-5fea-4f29-6def824abc31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem earlyPrimeBlock_le {A C : ℝ} (hA : 160 ≤ A) (hAC : 320 * C ≤ A)
    (hC : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C) :
    earlyPrimeBlock A ≤ -(7 / 2560 : ℝ)*A*Real.exp (A / 160) := by
  have hm := earlyPrimeMass_ge (show 0 ≤ A by linarith) hAC hC
  have hb := earlyPrimeBlock_le_mass hA
  have hn : -(7 / 16 : ℝ)*Real.exp (A / 160) ≤ 0 :=
    mul_nonpos_of_nonpos_of_nonneg (by norm_num) (Real.exp_pos _).le
  have h := mul_le_mul_of_nonpos_left hm hn
  calc
    _ ≤ -(7 / 16 : ℝ)*Real.exp (A / 160)*(A / 160) := hb.trans h
    _ = _ := by ring

/-- This eventual witness concerns only the disclosed actual negative block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8f59ed8817df53cf52f1946dc7bfd850045ff30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
