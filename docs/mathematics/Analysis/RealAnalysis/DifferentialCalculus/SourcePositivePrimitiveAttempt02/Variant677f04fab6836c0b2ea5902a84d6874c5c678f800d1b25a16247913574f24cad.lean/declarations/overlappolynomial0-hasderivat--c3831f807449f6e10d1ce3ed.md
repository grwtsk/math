# overlapPolynomial0_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd0e351c-dbce-5630-1402-82cbba97481f",
  "kind": "theorem",
  "lexical_name": "overlapPolynomial0_hasDerivAt",
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
  "slug": "overlappolynomial0-hasderivat--c3831f807449f6e10d1ce3ed",
  "source": {
    "blob": "12100a69d3caf66bd1eb1344532e51f7b9180aa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 113,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt02/Variant677f04fab6836c0b2ea5902a84d6874c5c678f800d1b25a16247913574f24cad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3831f807449f6e10d1ce3eddb5f2175a8666f19f82e2f76aa48ef5d3f55dd3f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt02/Variant677f04fab6836c0b2ea5902a84d6874c5c678f800d1b25a16247913574f24cad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd0e351c-dbce-5630-1402-82cbba97481f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlapPolynomial0_hasDerivAt (u : ℝ) :
    HasDerivAt overlapPolynomial0 (overlapPolynomial1 u) u := by
  have h := ((((((((((hasDerivAt_const u ((65536/109395:ℝ):ℝ))).add (((hasDerivAt_id u).pow 2).const_mul ((-65536/45045:ℝ):ℝ))).add (((hasDerivAt_id u).pow 4).const_mul ((8192/5005:ℝ):ℝ))).add (((hasDerivAt_id u).pow 6).const_mul ((-4096/3465:ℝ):ℝ))).add (((hasDerivAt_id u).pow 8).const_mul ((256/315:ℝ):ℝ))).add (((hasDerivAt_id u).pow 9).const_mul ((-128/315:ℝ):ℝ))).add (((hasDerivAt_id u).pow 11).const_mul ((128/3465:ℝ):ℝ))).add (((hasDerivAt_id u).pow 13).const_mul ((-16/5005:ℝ):ℝ))).add (((hasDerivAt_id u).pow 15).const_mul ((8/45045:ℝ):ℝ))).add (((hasDerivAt_id u).pow 17).const_mul ((-1/218790:ℝ):ℝ))
  convert h using 1 <;> dsimp [overlapPolynomial0,overlapPolynomial1] <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt02/Variant677f04fab6836c0b2ea5902a84d6874c5c678f800d1b25a16247913574f24cad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt02/Variant677f04fab6836c0b2ea5902a84d6874c5c678f800d1b25a16247913574f24cad.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12100a69d3caf66bd1eb1344532e51f7b9180aa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
