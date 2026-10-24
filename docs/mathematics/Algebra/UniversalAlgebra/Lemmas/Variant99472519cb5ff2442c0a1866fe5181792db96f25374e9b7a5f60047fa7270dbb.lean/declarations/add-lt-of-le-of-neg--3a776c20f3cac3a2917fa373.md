# add_lt_of_le_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f89a8700-f38c-969c-c42b-e791a4bf1d95",
  "kind": "theorem",
  "lexical_name": "add_lt_of_le_of_neg",
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
  "slug": "add-lt-of-le-of-neg--3a776c20f3cac3a2917fa373",
  "source": {
    "blob": "cadf2cb86009a1f908394aa84fddc71fba74dafe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 60,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a776c20f3cac3a2917fa373bcf9ded5cba60672d5092fd9c3de1cb3cccaba9a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f89a8700-f38c-969c-c42b-e791a4bf1d95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_lt_of_le_of_neg [IsStrictOrderedRing α] {a b c : α} (hbc : b ≤ c)
    (ha : a < 0) : b + a < c :=
  _root_.add_lt_of_le_of_neg hbc ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cadf2cb86009a1f908394aa84fddc71fba74dafe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
