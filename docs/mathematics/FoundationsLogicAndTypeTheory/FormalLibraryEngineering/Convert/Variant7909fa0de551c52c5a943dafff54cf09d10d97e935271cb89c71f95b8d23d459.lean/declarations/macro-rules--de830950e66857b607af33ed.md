# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22cab4d32ee6cf5d407637cae0775c8790aa56a945128eaf4d4f69a10e1917f8",
  "kind": "macro_rules",
  "lexical_name": null,
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
  "slug": "macro-rules--de830950e66857b607af33ed",
  "source": {
    "blob": "dbcf63295eb6337c8c68f5024506ded3b3ea9cc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant7909fa0de551c52c5a943dafff54cf09d10d97e935271cb89c71f95b8d23d459.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de830950e66857b607af33ed8643d12a92a28e293d979f0dc71f9fc3632e6771",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant7909fa0de551c52c5a943dafff54cf09d10d97e935271cb89c71f95b8d23d459.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22cab4d32ee6cf5d407637cae0775c8790aa56a945128eaf4d4f69a10e1917f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
macro_rules
| `(tactic| convert_to $[$cfg]? $[←%$sym]? $term $[with $ps?*]?) =>
  `(tactic| convert $[$cfg]? $[←%$sym]? (?_ : $term) using 1 $[with $ps?*]?)
| `(tactic| convert_to $[$cfg]? $[←%$sym]? $term using $n $[with $ps?*]?) =>
  `(tactic| convert $[$cfg]? $[←%$sym]? (?_ : $term) using $n $[with $ps?*]?)

/--
`ac_change g using n` is `convert_to g using n` followed by `ac_rfl`. It is useful for
rearranging/reassociating e.g. sums:
```lean
example (a b c d e f g N : ℕ) : (a + b) + (c + d) + (e + f) + g ≤ N := by
  ac_change a + d + e + f + c + g + b ≤ _
  -- ⊢ a + d + e + f + c + g + b ≤ N
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant7909fa0de551c52c5a943dafff54cf09d10d97e935271cb89c71f95b8d23d459.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant7909fa0de551c52c5a943dafff54cf09d10d97e935271cb89c71f95b8d23d459.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbcf63295eb6337c8c68f5024506ded3b3ea9cc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
