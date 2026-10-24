# mertensThreePointProgressionTerm_eq_divisorSquareSieve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f868900-d37a-52f7-f385-fb17052962f9",
  "kind": "theorem",
  "lexical_name": "mertensThreePointProgressionTerm_eq_divisorSquareSieve",
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
  "slug": "mertensthreepointprogressionterm-eq-divisorsquaresieve--95ec0c4e36d0a8e45d61adbe",
  "source": {
    "blob": "17a993e4f6d6e2fd29d39b02f40554523c3e7ecb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95ec0c4e36d0a8e45d61adbef0736ed2732569d2afa0f30b6b4a1e4fb1cb927b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f868900-d37a-52f7-f385-fb17052962f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensThreePointProgressionTerm_eq_divisorSquareSieve
    (cert : SquarefreeDivisorSquareMobiusIdentity)
    (h a : ℕ) :
    mertensThreePointProgressionTerm h a =
      mertensSquarefreeMidpointDivisorSieveTerm h a := by
  unfold mertensThreePointProgressionTerm
    mertensSquarefreeMidpointDivisorSieveTerm
    mertensSquarefreeMidpointEndpointProduct
  have hm : 0 < a + 1 + h := by omega
  rw [moebiusReal_sq_eq_squareDivisorMobiusSum cert hm]
  ring

/-- One endpoint cross-collision energy with the midpoint selector expanded
into the finite divisor-square Möbius sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17a993e4f6d6e2fd29d39b02f40554523c3e7ecb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
