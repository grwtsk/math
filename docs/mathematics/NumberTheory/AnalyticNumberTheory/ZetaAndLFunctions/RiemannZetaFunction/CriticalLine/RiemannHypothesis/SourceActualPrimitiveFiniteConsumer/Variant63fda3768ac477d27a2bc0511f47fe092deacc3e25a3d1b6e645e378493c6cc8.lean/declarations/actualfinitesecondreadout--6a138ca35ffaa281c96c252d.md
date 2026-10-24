# actualFiniteSecondReadout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51595e7b0c80d8dac69ec55f8e403904791398cf9bc2a98471442801f35c48fe",
  "kind": "def",
  "lexical_name": "actualFiniteSecondReadout",
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
  "slug": "actualfinitesecondreadout--6a138ca35ffaa281c96c252d",
  "source": {
    "blob": "7d381f074dfbb77878f50b20f90f04d6b2b9b0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimitiveFiniteConsumer/Variant63fda3768ac477d27a2bc0511f47fe092deacc3e25a3d1b6e645e378493c6cc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a138ca35ffaa281c96c252da75c2c5a0a38d09eba92228ed37c7283b3b57a2d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimitiveFiniteConsumer/Variant63fda3768ac477d27a2bc0511f47fe092deacc3e25a3d1b6e645e378493c6cc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51595e7b0c80d8dac69ec55f8e403904791398cf9bc2a98471442801f35c48fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualFiniteSecondReadout (t : ℝ) : ℝ :=
  let L := Real.log (2 : ℝ)
  4 * Real.exp (t / 2) * (mangoldtLogError t + Real.eulerMascheroniConstant + 4) -
  Real.exp (L / 2) * (2 * (t - L) + 4) *
    (mangoldtLogError L + Real.eulerMascheroniConstant) -
  Real.exp (L / 2) * (4 * (t - L) + 16) -
  ∑ n ∈ Finset.Ioc ⌊Real.exp L⌋₊ ⌊Real.exp t⌋₊,
    vonMangoldt n / (n : ℝ) * Real.exp (Real.log (n : ℝ) / 2) *
      (2 * (t - Real.log (n : ℝ)) + 4)

/-- Concrete return of the exact readout to the actual nested arithmetic primitive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimitiveFiniteConsumer/Variant63fda3768ac477d27a2bc0511f47fe092deacc3e25a3d1b6e645e378493c6cc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimitiveFiniteConsumer/Variant63fda3768ac477d27a2bc0511f47fe092deacc3e25a3d1b6e645e378493c6cc8.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d381f074dfbb77878f50b20f90f04d6b2b9b0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
