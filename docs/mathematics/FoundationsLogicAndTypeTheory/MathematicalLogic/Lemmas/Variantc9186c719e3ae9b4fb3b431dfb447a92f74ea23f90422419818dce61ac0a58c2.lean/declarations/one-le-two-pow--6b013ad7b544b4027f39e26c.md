# one_le_two_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ece9dd1-d8c5-3d69-de3b-70f640f84c5b",
  "kind": "theorem",
  "lexical_name": "one_le_two_pow",
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
  "slug": "one-le-two-pow--6b013ad7b544b4027f39e26c",
  "source": {
    "blob": "0d466956e2ecf2fb2d557281db440ca0d5e6f025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1143,
    "line": 1138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc9186c719e3ae9b4fb3b431dfb447a92f74ea23f90422419818dce61ac0a58c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b013ad7b544b4027f39e26c70b733bfeee5cac7558e572a71b05d04f1a6b272",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc9186c719e3ae9b4fb3b431dfb447a92f74ea23f90422419818dce61ac0a58c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ece9dd1-d8c5-3d69-de3b-70f640f84c5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1138–1143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem one_le_two_pow : 1 ≤ 2 ^ n :=
  if h : n = 0 then
    by subst h; simp
  else
    Nat.le_of_lt (Nat.one_lt_two_pow h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc9186c719e3ae9b4fb3b431dfb447a92f74ea23f90422419818dce61ac0a58c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc9186c719e3ae9b4fb3b431dfb447a92f74ea23f90422419818dce61ac0a58c2.lean#L1138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d466956e2ecf2fb2d557281db440ca0d5e6f025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
