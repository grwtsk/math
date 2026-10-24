# gaussNorm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94d3ea74-0be8-714c-0cbe-6b2c966f521c",
  "kind": "lemma",
  "lexical_name": "gaussNorm_eq",
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
  "slug": "gaussnorm-eq--08ff8262d533b483b3ab1645",
  "source": {
    "blob": "817e101e2bed044009efc4c775792d843cbb6919",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 63,
    "path": "GRWTSK/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08ff8262d533b483b3ab1645bdb6e6ce59f9fa19a07362a7fc55090b2582e603",
  "verification": {
    "reference": "docs/verification/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94d3ea74-0be8-714c-0cbe-6b2c966f521c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussNorm_eq : gaussNorm v c f = ⨆ i : ℕ, v (f.coeff i) * c ^ i := by
  refine Equiv.iSup_congr (Finsupp.uniqueEquiv ()) ?_
  intro x
  simp only [coeff, Finsupp.uniqueEquiv_apply, PUnit.default_eq_unit, Finsupp.prod_pow,
    Finset.univ_unique, Finset.prod_singleton, show (Finsupp.single () (x PUnit.unit)) = x by grind]

/-- We say `f` HasGaussNorm if the values `v (coeff t f) * c ^ t` is bounded above, that is
  `gaussNormC f` is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `817e101e2bed044009efc4c775792d843cbb6919` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
