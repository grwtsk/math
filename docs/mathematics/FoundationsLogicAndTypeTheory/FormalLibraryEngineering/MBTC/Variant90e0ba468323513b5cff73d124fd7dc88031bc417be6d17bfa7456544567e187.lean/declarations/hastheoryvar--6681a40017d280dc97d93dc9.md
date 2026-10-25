# hasTheoryVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5d62a1f331820a26cf29b903862fd17b7a01ec381b2c57b1135377613fe58e7",
  "kind": "def",
  "lexical_name": "hasTheoryVar",
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
  "slug": "hastheoryvar--6681a40017d280dc97d93dc9",
  "source": {
    "blob": "58ee9b16cc88ba78373adc36e6184932887d9451",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6681a40017d280dc97d93dc9e0c7f65205cc55f3979272bc6abf2dd0ec746869",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5d62a1f331820a26cf29b903862fd17b7a01ec381b2c57b1135377613fe58e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def hasTheoryVar (e : Expr) : GoalM Bool := do
  cutsatExt.hasTermAtRoot e

/-
**Note**: cutsat is a procedure for linear integer arithmetic. Thus, morally a
nonlinear multiplication, division, and modulo are **not** interpreted by cutsat.
Thus, we enable model-theory combination for them. This is necessary for examples
such as:
```
example {a b : Nat} (ha : 1 ≤ a) : (a - 1 + 1) * b = a * b := by grind
```
Note that we currently use a restrictive/cheaper version of mbtc. We only case-split
on `a = b`, if they have the same assignment **and** occur as the `i`-th argument of
the same function symbol. The latter reduces the number of case-splits we have to
perform, but misses the following variant of the problem above.
```
example {a b : Nat} (ha : 1 ≤ a) : (a - 1 + 1) * b = b * a := by grind
```
If this becomes an issue in practice, we can add a flag for enabling the more
expensive version of `mbtc`.
-/

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ee9b16cc88ba78373adc36e6184932887d9451` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
