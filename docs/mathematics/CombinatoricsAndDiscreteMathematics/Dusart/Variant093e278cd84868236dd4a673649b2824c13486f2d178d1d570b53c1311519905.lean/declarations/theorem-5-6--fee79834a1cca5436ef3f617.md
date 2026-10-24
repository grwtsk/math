# theorem_5_6

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0c6aff3-b286-8bdd-3cdf-fdef58a77fe7",
  "kind": "theorem",
  "lexical_name": "theorem_5_6",
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
  "slug": "theorem-5-6--fee79834a1cca5436ef3f617",
  "source": {
    "blob": "7ebe65bc6274dee5409981605bdc80f837fc7a8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 705,
    "line": 694,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fee79834a1cca5436ef3f617509bb981b4c392c87a1e8117003d5ec1a364ed9a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0c6aff3-b286-8bdd-3cdf-fdef58a77fe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–705.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_5_6 {x : ℝ} (hx : x ≥ 2278383) : ∃ E,
  ( (∑ p ∈ Finset.filter Prime (Finset.range (⌊x⌋₊ + 1)), 1 / (p : ℝ)) = log (log x) + meisselMertensConstant + E ∧ |E| ≤ 0.2 / (log x) ^ 3 ) := by sorry

@[blueprint "Dusart_thm_5_7"
  (title := "Dusart Theorem 5.7")
  (statement := /--
  We have for $x \geq 912560$,
  \[
  \sum_{p \leq x} \frac{\log p}{p} = \log x + E + O^*\Bigl(\frac{0.3}{\log^2 x}\Bigr).
  \]
  -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ebe65bc6274dee5409981605bdc80f837fc7a8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
