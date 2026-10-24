# recursion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:808b8eea-709d-5abb-9285-45675bd97c47",
  "kind": "lemma",
  "lexical_name": "recursion",
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
  "slug": "recursion--40d941f4f6f1520f95a9ee93",
  "source": {
    "blob": "8f18a360eaa0fbee0771677cc30345db94506fe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40d941f4f6f1520f95a9ee9387f4580539cb9889acf58a2fe46577bd2f116cdf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:808b8eea-709d-5abb-9285-45675bd97c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma recursion (n : ℕ) :
    I (n + 2) θ * θ ^ 2 =
      2 * (n + 2) * (2 * n + 3) * I (n + 1) θ - 4 * (n + 2) * (n + 1) * I n θ := by
  rw [recursion' (n + 1)]
  simp
  ring!

/--
Auxiliary for the proof that `π` is irrational.
The second base case for the induction on `n`, giving an explicit formula for `I 1 θ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f18a360eaa0fbee0771677cc30345db94506fe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
