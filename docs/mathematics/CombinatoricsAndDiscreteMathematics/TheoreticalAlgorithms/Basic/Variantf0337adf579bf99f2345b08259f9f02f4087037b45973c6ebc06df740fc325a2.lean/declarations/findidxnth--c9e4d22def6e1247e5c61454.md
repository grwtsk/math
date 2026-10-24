# findIdxNth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5222caa47ff95fea09b8ed0bcfd88e4fcb1a808a5e51fdbb00780a96151cde97",
  "kind": "def",
  "lexical_name": "findIdxNth",
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
  "slug": "findidxnth--c9e4d22def6e1247e5c61454",
  "source": {
    "blob": "893abf184548a93993213468d59ab1e39bbe0620",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 226,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf0337adf579bf99f2345b08259f9f02f4087037b45973c6ebc06df740fc325a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9e4d22def6e1247e5c61454b2a1b320bcc18fd98e8191f473140f74fec9e158",
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

Occurrence: `declaration:5222caa47ff95fea09b8ed0bcfd88e4fcb1a808a5e51fdbb00780a96151cde97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[inline] def findIdxNth (p : α → Bool) (xs : List α) (n : Nat) : Nat := go xs n 0 where
  /-- Auxiliary for `findIdxNth`: `findIdxNth.go p l n acc = findIdxNth p l n + acc`. -/
  @[specialize] go : (xs : List α) → (n : Nat) → (s : Nat) → Nat
  | [], _, s => s
  | a :: xs, 0, s => bif p a then s else go xs 0 (s + 1)
  | a :: xs, n + 1, s => bif !(p a) then go xs (n + 1) (s + 1) else go xs n (s + 1)

/--
`idxsOf a l s` is the list of all indexes of `a` in `l`,  added to an
optional parameter `s`. For example:
```
idxsOf b [a, b, a, a] = [1]
idxsOf a [a, b, a, a] 5 = [5, 7, 8]
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf0337adf579bf99f2345b08259f9f02f4087037b45973c6ebc06df740fc325a2.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `893abf184548a93993213468d59ab1e39bbe0620` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
