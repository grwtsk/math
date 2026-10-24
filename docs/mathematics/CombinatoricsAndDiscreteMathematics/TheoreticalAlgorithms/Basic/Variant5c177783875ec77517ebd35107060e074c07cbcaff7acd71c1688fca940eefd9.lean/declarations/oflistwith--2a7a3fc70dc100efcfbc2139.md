# ofListWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23541f7d7a32fc9e1cdfd162fd752405d5cd22d3bbb2fda087de0db80aad15fd",
  "kind": "def",
  "lexical_name": "ofListWith",
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
  "slug": "oflistwith--2a7a3fc70dc100efcfbc2139",
  "source": {
    "blob": "c447b70b792dea6ccbdd801246758cf04e4c6bc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5c177783875ec77517ebd35107060e074c07cbcaff7acd71c1688fca940eefd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a7a3fc70dc100efcfbc213943e002338d1b7bc944dcf6df8b14b738f186b953",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5c177783875ec77517ebd35107060e074c07cbcaff7acd71c1688fca940eefd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23541f7d7a32fc9e1cdfd162fd752405d5cd22d3bbb2fda087de0db80aad15fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofListWith [BEq α] [Hashable α] (l : List (α × β)) (f : β → β → β) : HashMap α β :=
  l.foldl (init := ∅) fun m p =>
    match m[p.1]? with
    | none   => m.insert p.1 p.2
    | some v => m.insert p.1 <| f v p.2

end Std.HashMap

namespace Batteries.HashMap

@[reducible, deprecated (since := "2025-05-31")]
alias LawfulHashable := LawfulHashable

/--
`HashMap α β` is a key-value map which stores elements in an array using a hash function
to find the values. This allows it to have very good performance for lookups
(average `O(1)` for a perfectly random hash function), but it is not a persistent data structure,
meaning that one should take care to use the map linearly when performing updates.
Copies are `O(n)`.
-/
@[deprecated Std.HashMap (since := "2025-04-09")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5c177783875ec77517ebd35107060e074c07cbcaff7acd71c1688fca940eefd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5c177783875ec77517ebd35107060e074c07cbcaff7acd71c1688fca940eefd9.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c447b70b792dea6ccbdd801246758cf04e4c6bc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
