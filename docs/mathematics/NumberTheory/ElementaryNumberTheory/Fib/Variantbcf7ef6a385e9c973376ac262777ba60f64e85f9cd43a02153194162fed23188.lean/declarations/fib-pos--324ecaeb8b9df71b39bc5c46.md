# fib_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec701c25-4e66-51d6-e417-6ed397847c79",
  "kind": "theorem",
  "lexical_name": "fib_pos",
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
  "slug": "fib-pos--324ecaeb8b9df71b39bc5c46",
  "source": {
    "blob": "099621b045170bebfb04131694d98b9832b9e6cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 110,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:324ecaeb8b9df71b39bc5c4654c1cc39d4e5b92affa0a0edf0d81e67cfa293d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec701c25-4e66-51d6-e417-6ed397847c79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fib_pos {n : ℕ} (n_pos : 0 < n) : 0 < fib n :=
  calc
    0 < fib 1 := by decide
    _ ≤ fib n := fib_mono n_pos
#align nat.fib_pos Nat.fib_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `099621b045170bebfb04131694d98b9832b9e6cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
