# v_irreducible_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86f52ce812579f0172346a10f665739fec420617",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98b94deb6e79f1cfdc1b61a95670b335023aac26f961a333226c383ac893ade7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af813c30-2e8c-f352-3f67-2d4cc4f43d95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb246881-b3a5-4c5e-04a2-f6fac18f5e1a",
  "kind": "lemma",
  "lexical_name": "v_irreducible_lt_one",
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
  "slug": "v-irreducible-lt-one--edb767e62f8b3bcac767af57",
  "source": {
    "blob": "86f52ce812579f0172346a10f665739fec420617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 295,
    "path": "GRWTSK/Algebra/Integers/Variant98b94deb6e79f1cfdc1b61a95670b335023aac26f961a333226c383ac893ade7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edb767e62f8b3bcac767af57a548a437ef351aa89469671dd32646452c0666dc",
  "verification": {
    "reference": "docs/verification/Algebra/Integers/Variant98b94deb6e79f1cfdc1b61a95670b335023aac26f961a333226c383ac893ade7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb246881-b3a5-4c5e-04a2-f6fac18f5e1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma v_irreducible_lt_one {ϖ : v.integer} (h : Irreducible ϖ) :
    v ϖ < 1 :=
  (Valuation.integer.integers v).valuation_irreducible_lt_one h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integers/Variant98b94deb6e79f1cfdc1b61a95670b335023aac26f961a333226c383ac893ade7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integers/Variant98b94deb6e79f1cfdc1b61a95670b335023aac26f961a333226c383ac893ade7.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86f52ce812579f0172346a10f665739fec420617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
