# BridgeSelection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0848f9156ae89596e062ba6fb16fefb3945a8438c017401ee6055472ee240b99",
  "kind": "structure",
  "lexical_name": "BridgeSelection",
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
  "slug": "bridgeselection--48f5618a802d0c28bf99d962",
  "source": {
    "blob": "587f6324971c126614a14de3290f949678351a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 243,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48f5618a802d0c28bf99d9629f2b584e98c313773422d5837e0a759a5a99ed2e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0848f9156ae89596e062ba6fb16fefb3945a8438c017401ee6055472ee240b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BridgeSelection {V : Type v} {E : Type w}
    [Fintype V] [DecidableEq V] [Fintype E] [DecidableEq E]
    (catalog : BridgeCatalog.{u} V E) where
  /-- Finite node identities selected from the shared catalog. -/
  nodes : Finset V
  /-- Finite checked edge identities selected from the shared catalog. -/
  bridges : Finset E
  /-- Selected edges refer only to selected nodes. -/
  endpoints_mem : ∀ e ∈ bridges,
    (catalog.admitted e).source ∈ nodes ∧ (catalog.admitted e).target ∈ nodes

namespace BridgeSelection

variable {V : Type v} {E : Type w}
variable [Fintype V] [DecidableEq V] [Fintype E] [DecidableEq E]
variable {catalog : BridgeCatalog.{u} V E}

/-- Expose a catalog selection through the finite graph interface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `587f6324971c126614a14de3290f949678351a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
