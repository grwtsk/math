# extractArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51ae0961218bf75b566cc45cd5c52d15414515db76a045763af2775e2c8e980b",
  "kind": "def",
  "lexical_name": "extractArray",
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
  "slug": "extractarray--86a2d5240bffc18dd7b727fd",
  "source": {
    "blob": "a9be5046eb29a20ef9cd9c27da3621166eb03423",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 182,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantaa72cc22290257457b02030c0f12a19bc82558423d9a8737eb4924473dff4fe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86a2d5240bffc18dd7b727fd812c2e09eb54d851a86ccc89c57fe9f2c240b0ee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantaa72cc22290257457b02030c0f12a19bc82558423d9a8737eb4924473dff4fe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51ae0961218bf75b566cc45cd5c52d15414515db76a045763af2775e2c8e980b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extractArray (a : Array α) (b : Bitset) : Array α := Id.run do
  let mut new := #[]
  for i in b.lowToHigh do
    if h : i < a.size then
      new := new.push a[i]
    else break
  return new

/-! ## Representations -/

deriving instance ToJson, FromJson for Bitset

/-- Converts a `Bitset` to a string of the form `"◻◼◻◻◻◼◻◼◼◻◻◼"`, where indices run left-to-right
from `0` and `◻` represents absence at that index, while `◼` represents presence.

By default, this shows only as many squares as necessary (or `"◻"` for an empty bitset), and so in
the nonempty case the last square will always be `◼`. Instead, `univSize? : Option Nat` can be
provided to set the total number of indices, and will either truncate (even if higher bits are set)
or pad with `◻` as appropriate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantaa72cc22290257457b02030c0f12a19bc82558423d9a8737eb4924473dff4fe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantaa72cc22290257457b02030c0f12a19bc82558423d9a8737eb4924473dff4fe5.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9be5046eb29a20ef9cd9c27da3621166eb03423` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
