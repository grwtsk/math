# IsBoundedUnder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:581b0ec9a0b71e4a79eb15e524880694de6d0bb0da4f98632369d57c1f0f2a82",
  "kind": "def",
  "lexical_name": "IsBoundedUnder",
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
  "slug": "isboundedunder--b3b99b98bbb5622b42b133a9",
  "source": {
    "blob": "e54f4871a5be021db66b117afb5aa8489669a342",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 375,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3b99b98bbb5622b42b133a9d0205ce56faeabee2497f93dc7fc1b05da46ce69",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:581b0ec9a0b71e4a79eb15e524880694de6d0bb0da4f98632369d57c1f0f2a82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsBoundedUnder (r : α → α → Prop) (f : Filter β) (u : β → α) :=
  (map u f).IsBounded r

/-- `IsCobounded (≺) f` states that the filter `f` does not tend to infinity w.r.t. `≺`. This is
also called frequently bounded. Will be usually instantiated with `≤` or `≥`.

There is a subtlety in this definition: we want `f.IsCobounded` to hold for any `f` in the case of
complete lattices. This will be relevant to deduce theorems on complete lattices from their
versions on conditionally complete lattices with additional assumptions. We have to be careful in
the edge case of the trivial filter containing the empty set: the other natural definition
  `¬ ∀ a, ∀ᶠ n in f, a ≤ n`
would not work as well in this case.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e54f4871a5be021db66b117afb5aa8489669a342` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
