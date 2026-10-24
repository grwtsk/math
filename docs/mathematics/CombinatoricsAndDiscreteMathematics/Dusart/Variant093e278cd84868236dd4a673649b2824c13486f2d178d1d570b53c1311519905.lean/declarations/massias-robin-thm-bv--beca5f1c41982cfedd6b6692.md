# massias_robin_thm_Bv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbc49c9e-acdf-2780-b91d-4f4a54812d14",
  "kind": "theorem",
  "lexical_name": "massias_robin_thm_Bv",
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
  "slug": "massias-robin-thm-bv--beca5f1c41982cfedd6b6692",
  "source": {
    "blob": "7ebe65bc6274dee5409981605bdc80f837fc7a8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 772,
    "line": 761,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beca5f1c41982cfedd6b6692d5cf695da5da331229dee6aab74d288d904e4f74",
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

Occurrence: `result:cbc49c9e-acdf-2780-b91d-4f4a54812d14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 761–772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem massias_robin_thm_Bv {k : ℕ} (hk : k ≥ 198) :
  θ (nth_prime' k) ≤ k * (Real.log k + Real.log (Real.log k) - 1 + (Real.log (Real.log k) - 2) / (Real.log k)) := by sorry

@[blueprint "Dusart_prop_5_11a"
  (title := "Dusart Proposition 5.11")
  (statement := /--
  We have for $p_k \geq 10^{11}$,
  \[
  \vartheta(p_k) \geq k (\log k + \log \log k - 1 + \frac{\log \log k - 2.050735}{\log k}).
  \]
  -/)
  (latexEnv := "proposition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean#L761).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ebe65bc6274dee5409981605bdc80f837fc7a8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
