# overlapPolynomial2_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6d56e96-1dfa-fc6a-31a9-beb0f982f373",
  "kind": "theorem",
  "lexical_name": "overlapPolynomial2_hasDerivAt",
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
  "slug": "overlappolynomial2-hasderivat--4c2a27b48ae886a88720a39b",
  "source": {
    "blob": "4d22f8b7c7600f6e93b1d7913569fb86ad4c0410",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt06/Variant1c596ebf16499025b7fdc0c2fb251be8b48233071a19308c672363fcd95291d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c2a27b48ae886a88720a39b65b1d1a635e9f4482c04c1543fd32c620eece5cc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt06/Variant1c596ebf16499025b7fdc0c2fb251be8b48233071a19308c672363fcd95291d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6d56e96-1dfa-fc6a-31a9-beb0f982f373`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlapPolynomial2_hasDerivAt (u : ℝ) :
    HasDerivAt overlapPolynomial2 (overlapPolynomial3 u) u := by
  have h := (((((((((hasDerivAt_const u ((-131072/45045:ℝ):ℝ))).add (((hasDerivAt_id u).pow 2).const_mul ((98304/5005:ℝ):ℝ))).add (((hasDerivAt_id u).pow 4).const_mul ((-8192/231:ℝ):ℝ))).add (((hasDerivAt_id u).pow 6).const_mul ((2048/45:ℝ):ℝ))).add (((hasDerivAt_id u).pow 7).const_mul ((-1024/35:ℝ):ℝ))).add (((hasDerivAt_id u).pow 9).const_mul ((256/63:ℝ):ℝ))).add (((hasDerivAt_id u).pow 11).const_mul ((-192/385:ℝ):ℝ))).add (((hasDerivAt_id u).pow 13).const_mul ((16/429:ℝ):ℝ))).add (((hasDerivAt_id u).pow 15).const_mul ((-8/6435:ℝ):ℝ))
  convert h using 1 <;> first | rfl | ((first | funext v | skip); norm_num [overlapPolynomial2,overlapPolynomial3,Pi.add_apply,Pi.pow_apply,id_eq]; ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt06/Variant1c596ebf16499025b7fdc0c2fb251be8b48233071a19308c672363fcd95291d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt06/Variant1c596ebf16499025b7fdc0c2fb251be8b48233071a19308c672363fcd95291d3.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d22f8b7c7600f6e93b1d7913569fb86ad4c0410` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
