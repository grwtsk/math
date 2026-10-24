# NII

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d76d7ce81120e5b2d1da6060b0da7512d27fc79eb0fe24c189aac246682d5593",
  "kind": "def",
  "lexical_name": "NII",
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
  "slug": "nii--ed8faf605316fe48eb4c6fcf",
  "source": {
    "blob": "941de2a536795fd8806e55a94e61beac2888842e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variantc1d67d84219b91d572bc778699f07908f223156634e316d4384ee19e7787e11d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed8faf605316fe48eb4c6fcf4f9ccea540f75bfaaf44c4d19ac216c21b2275cd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variantc1d67d84219b91d572bc778699f07908f223156634e316d4384ee19e7787e11d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d76d7ce81120e5b2d1da6060b0da7512d27fc79eb0fe24c189aac246682d5593`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NII : ℕ := Z.N (T - D0 T) T + Z.N (2 * T) (2 * T + D0 T)

/-- **Inputs from prop:block + [eq:Ncount] at height `T`** (the paper `prop:block`:
"(i) `n₊(Ã) ≤ s₁+s₂+p` and `rank(Ã) ≤ s₁+s₂+2p = #𝒵(I′)`.
 (ii) `Â = P+Q` with `P,Q` real symmetric, `P ⪰ 0`, `rank P ≤ s₁+s₂`, `tr P ≤ N_on(I′)`, and `n₊(Q) ≤ p`";
[eq:Ncount]: "`N(I′) ≥ s₁+2s₂+2p`" and "`N(I′) ≥ N_on(I′)+2p`"), produced by `ZeroSide.lean`.
Units: `Ã = P.tilde T (Z.Az P T)` [eq:AE], `Â = P.hat T (Z.Az P T)` [eq:hatunits].
`p` (number of off-line pairs in `𝒵(I′)`) is existentially quantified since only the displayed
inequalities involving it are consumed downstream. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variantc1d67d84219b91d572bc778699f07908f223156634e316d4384ee19e7787e11d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variantc1d67d84219b91d572bc778699f07908f223156634e316d4384ee19e7787e11d.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `941de2a536795fd8806e55a94e61beac2888842e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
