# iConvexComb_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:405d74a6-f8f4-9b54-b914-19efe8b38afd",
  "kind": "lemma",
  "lexical_name": "iConvexComb_congr",
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
  "slug": "iconvexcomb-congr--ae9f4c4e8aadd7c070a86b6f",
  "source": {
    "blob": "822fabbe37c272395db2bac994340fd464ed010d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 528,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant1070724975d773b556d5094b20a58e611bda18bf1f6a21ec019e5a667d43d22d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae9f4c4e8aadd7c070a86b6fb1d6d818d76f3c92a88cbbd63081c22dc1a9b1a9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant1070724975d773b556d5094b20a58e611bda18bf1f6a21ec019e5a667d43d22d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:405d74a6-f8f4-9b54-b914-19efe8b38afd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[congr] lemma iConvexComb_congr {w : StdSimplex R I} {f g : I → X}
    (hfg : ∀ i, w.weights i ≠ 0 → f i = g i) :
    w.iConvexComb f = w.iConvexComb g := by
  refine congr(sConvexComb $(?_))
  ext i
  simp only [weights_map]
  -- TODO: This should just be `congr! 2 with i hi`.
  congr 1
  refine Finsupp.mapDomain_congr fun i hi ↦ ?_
  exact hfg i (by simpa using hi)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant1070724975d773b556d5094b20a58e611bda18bf1f6a21ec019e5a667d43d22d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant1070724975d773b556d5094b20a58e611bda18bf1f6a21ec019e5a667d43d22d.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `822fabbe37c272395db2bac994340fd464ed010d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
