# arithmeticResidual_eq_divisor_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9fc5ff1b8f88ab9a6339dd945e26d62bc8bcd434",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/335348aba65131be0c672e544ac787e81dbe66d6172d566b983d22e63e2b320e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a03bf297-2b7d-5835-3d6e-aaa7b33e28a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f67b44c-ac4a-1233-1637-ba60d3ac4ab0",
  "kind": "theorem",
  "lexical_name": "arithmeticResidual_eq_divisor_prefix",
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
  "slug": "arithmeticresidual-eq-divisor-prefix--dbef41016fdfee76c57a01d0",
  "source": {
    "blob": "9fc5ff1b8f88ab9a6339dd945e26d62bc8bcd434",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 100,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variant335348aba65131be0c672e544ac787e81dbe66d6172d566b983d22e63e2b320e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbef41016fdfee76c57a01d0d2d17c22161ed4e9da0f945c9fe505ebcf62ea9e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variant335348aba65131be0c672e544ac787e81dbe66d6172d566b983d22e63e2b320e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f67b44c-ac4a-1233-1637-ba60d3ac4ab0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticResidual_eq_divisor_prefix (X : ℕ) (ε x : ℝ)
    (hX : 1 ≤ X) (hx : 1 ≤ x) (hxX : x < X) :
    arithmeticResidual X ε x =
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
        ((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n : ℝ) : ℂ) := by
  have hX0 : (0 : ℝ) < X := by exact_mod_cast (show 0 < X by omega)
  have hz : ⌊x / (X : ℝ)⌋₊ = 0 := Nat.floor_eq_zero.mpr ((div_lt_one hX0).mpr hxX)
  rw [arithmeticResidual_eq_divisor_prefix_closed X ε x hX hx hxX.le, hz]
  simp

/-- Without damping the unchanged source cancels exactly on the strict original cutoff interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variant335348aba65131be0c672e544ac787e81dbe66d6172d566b983d22e63e2b320e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variant335348aba65131be0c672e544ac787e81dbe66d6172d566b983d22e63e2b320e.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fc5ff1b8f88ab9a6339dd945e26d62bc8bcd434` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
