# gaussNorm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fca2a40f2f6ffb41ab5a5e69bc3f4ff30df0a6aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbc94dc1-1c47-3623-e25a-b5c18e28dcc7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a653f080-7082-8e24-f638-175ad56d0316",
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
  "slug": "gaussnorm-eq--662adda486dbdd3ea8e330f3",
  "source": {
    "blob": "fca2a40f2f6ffb41ab5a5e69bc3f4ff30df0a6aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 55,
    "path": "GRWTSK/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:662adda486dbdd3ea8e330f38d7e8803387fd42defe2c93d349034e8945e563b",
  "verification": {
    "reference": "docs/verification/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a653f080-7082-8e24-f638-175ad56d0316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–62.

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

[Verification target and public status](../../../../../verification/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fca2a40f2f6ffb41ab5a5e69bc3f4ff30df0a6aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
