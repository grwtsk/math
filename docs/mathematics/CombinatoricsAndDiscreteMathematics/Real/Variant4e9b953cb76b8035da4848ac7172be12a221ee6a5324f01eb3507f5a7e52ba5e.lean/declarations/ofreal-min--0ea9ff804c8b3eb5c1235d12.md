# ofReal_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47ec78fc-ace4-f8f6-1a1e-faa3c9f7e546",
  "kind": "lemma",
  "lexical_name": "ofReal_min",
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
  "slug": "ofreal-min--0ea9ff804c8b3eb5c1235d12",
  "source": {
    "blob": "cadf19dfbc3842e22b5e3c878078a41ce2becbd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 191,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Real/Variant4e9b953cb76b8035da4848ac7172be12a221ee6a5324f01eb3507f5a7e52ba5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ea9ff804c8b3eb5c1235d1242e8dda1a676a718e6b12554c2f6f34ab32f3620",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Real/Variant4e9b953cb76b8035da4848ac7172be12a221ee6a5324f01eb3507f5a7e52ba5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47ec78fc-ace4-f8f6-1a1e-faa3c9f7e546`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma ofReal_min (x y : ℝ) : ENNReal.ofReal (min x y) = min (.ofReal x) (.ofReal y) :=
  ofReal_mono.map_min

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Real/Variant4e9b953cb76b8035da4848ac7172be12a221ee6a5324f01eb3507f5a7e52ba5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Real/Variant4e9b953cb76b8035da4848ac7172be12a221ee6a5324f01eb3507f5a7e52ba5e.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cadf19dfbc3842e22b5e3c878078a41ce2becbd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
