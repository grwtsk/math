# oldUnparenthesized1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89cb07902c21cec6c68fb5f501c9d4e89700d316310b05958a309dc6f21cabb3",
  "kind": "def",
  "lexical_name": "oldUnparenthesized1",
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
  "slug": "oldunparenthesized1--10af23f29ead18d967278f2c",
  "source": {
    "blob": "f04621ea64b317d466dbc56e2ffc5331e679a391",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5OldIntegralCaptu/Variant27a0fd69e7800d75cbebc4572a307d8c74ebe724cfa054c97fd0988592d15c16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10af23f29ead18d967278f2c1404d38fd100d0bb3481372c26d7f426cd796a4a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5OldIntegralCaptu/Variant27a0fd69e7800d75cbebc4572a307d8c74ebe724cfa054c97fd0988592d15c16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89cb07902c21cec6c68fb5f501c9d4e89700d316310b05958a309dc6f21cabb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def oldUnparenthesized1 (u : ℂ) (b : ℝ) : Prop :=
    (8 : ℂ) *
        ∫ t in (0 : ℝ)..b,
          (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) =
      (1 / 2 : ℂ) +
        (4 * u ^ 2 - 1) *
          ∫ t in (0 : ℝ)..b,
            (thetaA t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) +
        (thetaADerivSeries b : ℂ) * Complex.cosh (2 * u * (b : ℂ)) -
        (2 * u) * (thetaA b : ℂ) * Complex.sinh (2 * u * (b : ℂ))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5OldIntegralCaptu/Variant27a0fd69e7800d75cbebc4572a307d8c74ebe724cfa054c97fd0988592d15c16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5OldIntegralCaptu/Variant27a0fd69e7800d75cbebc4572a307d8c74ebe724cfa054c97fd0988592d15c16.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f04621ea64b317d466dbc56e2ffc5331e679a391` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
