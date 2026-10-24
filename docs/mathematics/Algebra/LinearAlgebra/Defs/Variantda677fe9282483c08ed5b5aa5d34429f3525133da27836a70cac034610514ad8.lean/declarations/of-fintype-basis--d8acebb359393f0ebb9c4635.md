# of_fintype_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "caa6ad026ddd6ee5928b7888495f457685a51f27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d290ab8d-d56a-44f7-78ee-4aab648dc4cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7709094c-db66-0023-abb9-cddea956cff2",
  "kind": "theorem",
  "lexical_name": "of_fintype_basis",
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
  "slug": "of-fintype-basis--d8acebb359393f0ebb9c4635",
  "source": {
    "blob": "caa6ad026ddd6ee5928b7888495f457685a51f27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8acebb359393f0ebb9c4635724978f146dcfa7802eac01999ec7ce2d5654e82",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7709094c-db66-0023-abb9-cddea956cff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_fintype_basis {ι : Type w} [Finite ι] (h : Basis ι K V) : FiniteDimensional K V :=
  Module.Finite.of_basis h

/-- If a vector space is `FiniteDimensional`, all bases are indexed by a finite type -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caa6ad026ddd6ee5928b7888495f457685a51f27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
