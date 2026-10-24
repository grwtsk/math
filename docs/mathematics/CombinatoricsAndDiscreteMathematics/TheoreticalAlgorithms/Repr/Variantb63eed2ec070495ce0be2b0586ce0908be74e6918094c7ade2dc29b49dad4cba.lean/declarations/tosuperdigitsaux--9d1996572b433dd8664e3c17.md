# toSuperDigitsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdb6af5468b2d13a7d4fbf13b31d2245a433be39351baaa395ece6022e39ce06",
  "kind": "def",
  "lexical_name": "toSuperDigitsAux",
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
  "slug": "tosuperdigitsaux--9d1996572b433dd8664e3c17",
  "source": {
    "blob": "5b3572ee5f1950d4f98b34fdd44d31d6ed23fd68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 280,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variantb63eed2ec070495ce0be2b0586ce0908be74e6918094c7ade2dc29b49dad4cba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d1996572b433dd8664e3c17ea76f418da304b2411f787f1ecec4b5a78756c0a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variantb63eed2ec070495ce0be2b0586ce0908be74e6918094c7ade2dc29b49dad4cba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdb6af5468b2d13a7d4fbf13b31d2245a433be39351baaa395ece6022e39ce06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def toSuperDigitsAux : Nat → List Char → List Char
  | n, ds =>
    let d  := superDigitChar <| n % 10;
    let n' := n / 10;
    if n' = 0 then d::ds
    else toSuperDigitsAux n' (d::ds)

/--
Converts a natural number to the list of Unicode superscript digit characters that corresponds to
its decimal representation.

Examples:
 * `Nat.toSuperDigits 0 = ['⁰']`
 * `Nat.toSuperDigits 35 = ['³', '⁵']`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variantb63eed2ec070495ce0be2b0586ce0908be74e6918094c7ade2dc29b49dad4cba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variantb63eed2ec070495ce0be2b0586ce0908be74e6918094c7ade2dc29b49dad4cba.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3572ee5f1950d4f98b34fdd44d31d6ed23fd68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
