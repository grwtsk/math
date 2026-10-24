# countPBefore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc63f7b362cbfd1dfbabb856c96e260e12d08ef332d37186f94f2f7ca79da420",
  "kind": "def",
  "lexical_name": "countPBefore",
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
  "slug": "countpbefore--e78cccdf0ffab6d2f7aa0302",
  "source": {
    "blob": "893abf184548a93993213468d59ab1e39bbe0620",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 262,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf0337adf579bf99f2345b08259f9f02f4087037b45973c6ebc06df740fc325a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e78cccdf0ffab6d2f7aa0302ea1136cdf8bc6e6094977d06842c371c39296d49",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf0337adf579bf99f2345b08259f9f02f4087037b45973c6ebc06df740fc325a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc63f7b362cbfd1dfbabb856c96e260e12d08ef332d37186f94f2f7ca79da420`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def countPBefore (p : α → Bool) (xs : List α) (i : Nat) : Nat := go xs i 0 where
  /-- Auxiliary for `countPBefore`: `countPBefore.go p l i acc = countPBefore p l i + acc`. -/
  @[specialize] go : (xs : List α) → (i : Nat) → (s : Nat) → Nat
  | _ :: _, 0, s => s
  | a :: xs, i + 1, s => bif p a then go xs i (s + 1) else go xs i s
  | [], _, s => s

/-- `countBefore a xs n` counts the number of `x` in `xs` before the
`i`th index for which `x == a` is true.

For example:
```
countBefore 1 [5, 1, 3, 2, 4, 0, 1, 4] 6 = 1
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf0337adf579bf99f2345b08259f9f02f4087037b45973c6ebc06df740fc325a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf0337adf579bf99f2345b08259f9f02f4087037b45973c6ebc06df740fc325a2.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `893abf184548a93993213468d59ab1e39bbe0620` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
