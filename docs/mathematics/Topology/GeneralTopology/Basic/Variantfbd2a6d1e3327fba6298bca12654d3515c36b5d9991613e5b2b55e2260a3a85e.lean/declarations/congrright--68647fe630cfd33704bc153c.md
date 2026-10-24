# congrRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de8273fe44a9066f8d647cfefbc8dfd99262101e1eede752807528fbb7489847",
  "kind": "def",
  "lexical_name": "congrRight",
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
  "slug": "congrright--68647fe630cfd33704bc153c",
  "source": {
    "blob": "50a995bdfcb330c1f5669e1327e7c5b99b030727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 503,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantfbd2a6d1e3327fba6298bca12654d3515c36b5d9991613e5b2b55e2260a3a85e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68647fe630cfd33704bc153cc50e3da9636ffef6fdccad2200df7378bacd8c25",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantfbd2a6d1e3327fba6298bca12654d3515c36b5d9991613e5b2b55e2260a3a85e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de8273fe44a9066f8d647cfefbc8dfd99262101e1eede752807528fbb7489847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def congrRight (e : Y ≃ Z) : LocallyConstant X Y ≃ LocallyConstant X Z where
  toFun := map e
  invFun := map e.symm
  left_inv := by intro; ext; simp
  right_inv := by intro; ext; simp

variable (X) in
/--
The set of clopen subsets of a topological space is equivalent to the locally constant maps to
a two-element set
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantfbd2a6d1e3327fba6298bca12654d3515c36b5d9991613e5b2b55e2260a3a85e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantfbd2a6d1e3327fba6298bca12654d3515c36b5d9991613e5b2b55e2260a3a85e.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50a995bdfcb330c1f5669e1327e7c5b99b030727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
