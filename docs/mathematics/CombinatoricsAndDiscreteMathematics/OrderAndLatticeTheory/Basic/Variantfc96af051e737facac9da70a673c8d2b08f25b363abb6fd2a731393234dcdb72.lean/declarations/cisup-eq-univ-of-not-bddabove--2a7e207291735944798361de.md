# ciSup_eq_univ_of_not_bddAbove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c508e21a-71ab-c24b-824e-72d260607a8f",
  "kind": "lemma",
  "lexical_name": "ciSup_eq_univ_of_not_bddAbove",
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
  "slug": "cisup-eq-univ-of-not-bddabove--2a7e207291735944798361de",
  "source": {
    "blob": "4532a24b4e6a5d856c0ab223bbef2184588defbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 392,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfc96af051e737facac9da70a673c8d2b08f25b363abb6fd2a731393234dcdb72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a7e207291735944798361de53798fd64fcfa07820e77cc1a8e73dbd51988fa2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfc96af051e737facac9da70a673c8d2b08f25b363abb6fd2a731393234dcdb72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c508e21a-71ab-c24b-824e-72d260607a8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ciSup_eq_univ_of_not_bddAbove (hf : ¬BddAbove (range f)) : ⨆ i, f i = sSup univ :=
  csSup_eq_univ_of_not_bddAbove hf

/-- When every element of a set `s` is bounded by an element of a set `t`, and conversely, then
`s` and `t` have the same supremum. This holds even when the sets may be empty or unbounded. -/
@[to_dual
/-- When every element of a set `s` is bounded by an element of a set `t`, and conversely, then
`s` and `t` have the same infimum. This holds even when the sets may be empty or unbounded. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfc96af051e737facac9da70a673c8d2b08f25b363abb6fd2a731393234dcdb72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfc96af051e737facac9da70a673c8d2b08f25b363abb6fd2a731393234dcdb72.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4532a24b4e6a5d856c0ab223bbef2184588defbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
