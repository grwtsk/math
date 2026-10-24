# eq_bot_of_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5e17a98bd2509992240576a4580d7c82d701470",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a948eae-aae6-48a5-ab5b-19166e3de085",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1df6b996-b0df-543e-8b28-7234eef2ee8d",
  "kind": "theorem",
  "lexical_name": "eq_bot_of_prime",
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
  "slug": "eq-bot-of-prime--8a207f9e43c3e84267a042a6",
  "source": {
    "blob": "f5e17a98bd2509992240576a4580d7c82d701470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 116,
    "path": "GRWTSK/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a207f9e43c3e84267a042a68b97cb968339a0394d9cdde99c775e31d823598d",
  "verification": {
    "reference": "docs/verification/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1df6b996-b0df-543e-8b28-7234eef2ee8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_bot_of_prime [h : I.IsPrime] : I = ⊥ :=
  or_iff_not_imp_right.mp I.eq_bot_or_top h.1

end Ideal

end DivisionSemiring
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prime/Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5e17a98bd2509992240576a4580d7c82d701470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
