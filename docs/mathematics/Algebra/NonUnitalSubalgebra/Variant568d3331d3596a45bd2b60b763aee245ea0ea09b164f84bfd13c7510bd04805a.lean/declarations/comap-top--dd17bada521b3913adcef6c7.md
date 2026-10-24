# comap_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "680a173b91789eed7742b4a2907af590daaa97eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 855,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/568d3331d3596a45bd2b60b763aee245ea0ea09b164f84bfd13c7510bd04805a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f260fb4d-6bac-93a9-77a8-9af500ffcef0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d835260f-8ec4-181e-e736-4922b2daf129",
  "kind": "theorem",
  "lexical_name": "comap_top",
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
  "slug": "comap-top--dd17bada521b3913adcef6c7",
  "source": {
    "blob": "680a173b91789eed7742b4a2907af590daaa97eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 859,
    "line": 855,
    "path": "GRWTSK/Algebra/NonUnitalSubalgebra/Variant568d3331d3596a45bd2b60b763aee245ea0ea09b164f84bfd13c7510bd04805a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd17bada521b3913adcef6c753654562967afce921e69381690f678e2039c084",
  "verification": {
    "reference": "docs/verification/Algebra/NonUnitalSubalgebra/Variant568d3331d3596a45bd2b60b763aee245ea0ea09b164f84bfd13c7510bd04805a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d835260f-8ec4-181e-e736-4922b2daf129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 855–859.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_top [IsScalarTower R B B] [SMulCommClass R B B] [StarModule R B] (f : F) :
    (⊤ : NonUnitalStarSubalgebra R B).comap f = ⊤ :=
  eq_top_iff.2 fun _x => mem_top

/-- `NonUnitalStarAlgHom` to `⊤ : NonUnitalStarSubalgebra R A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonUnitalSubalgebra/Variant568d3331d3596a45bd2b60b763aee245ea0ea09b164f84bfd13c7510bd04805a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonUnitalSubalgebra/Variant568d3331d3596a45bd2b60b763aee245ea0ea09b164f84bfd13c7510bd04805a.lean#L855).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `680a173b91789eed7742b4a2907af590daaa97eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
