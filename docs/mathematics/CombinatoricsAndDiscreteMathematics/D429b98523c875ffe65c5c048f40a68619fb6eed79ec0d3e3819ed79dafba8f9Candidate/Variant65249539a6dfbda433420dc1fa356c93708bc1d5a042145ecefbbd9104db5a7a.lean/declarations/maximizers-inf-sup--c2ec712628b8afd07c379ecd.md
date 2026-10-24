# maximizers_inf_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:984a4ca3-b846-b808-4be8-d8f92aa7430a",
  "kind": "theorem",
  "lexical_name": "maximizers_inf_sup",
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
  "slug": "maximizers-inf-sup--c2ec712628b8afd07c379ecd",
  "source": {
    "blob": "604ee4e1fd6651b2b7ad0065ff0d4aed24f828b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2ec712628b8afd07c379ecdf98ceda6ea2cd68aed8c48912b587d9bbc29b582",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:984a4ca3-b846-b808-4be8-d8f92aa7430a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maximizers_inf_sup {f : α → ℝ} (hf : Supermodular f)
    {x y : α} (hx : IsMaximizer f x) (hy : IsMaximizer f y) :
    IsMaximizer f (x ⊓ y) ∧ IsMaximizer f (x ⊔ y) := by
  have hsuper := hf x y
  have hxy := hy x
  have hinf := hx (x ⊓ y)
  have hsup := hx (x ⊔ y)
  constructor
  · intro z
    have hz := hx z
    linarith
  · intro z
    have hz := hx z
    linarith

/-- An attained maximum and a finite maximizer set give a unique greatest
maximizer. This variant does not assume that the whole carrier is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `604ee4e1fd6651b2b7ad0065ff0d4aed24f828b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
