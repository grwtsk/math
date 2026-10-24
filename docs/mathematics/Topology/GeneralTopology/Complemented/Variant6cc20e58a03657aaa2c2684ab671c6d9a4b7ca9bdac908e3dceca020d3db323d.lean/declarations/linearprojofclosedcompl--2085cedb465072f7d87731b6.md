# linearProjOfClosedCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd750de5e8127693a7ee29ce600c3e753c67f0a641e6031f93d59cb6bb493879",
  "kind": "def",
  "lexical_name": "linearProjOfClosedCompl",
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
  "slug": "linearprojofclosedcompl--2085cedb465072f7d87731b6",
  "source": {
    "blob": "643fbdb4c83232a0b2605877ecc10f88be967aeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/Complemented/Variant6cc20e58a03657aaa2c2684ab671c6d9a4b7ca9bdac908e3dceca020d3db323d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2085cedb465072f7d87731b6f57a3d486ed0da5a06b9513d2ef6219e355c637b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complemented/Variant6cc20e58a03657aaa2c2684ab671c6d9a4b7ca9bdac908e3dceca020d3db323d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd750de5e8127693a7ee29ce600c3e753c67f0a641e6031f93d59cb6bb493879`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def linearProjOfClosedCompl (h : IsCompl p q) (hp : IsClosed (p : Set E))
    (hq : IsClosed (q : Set E)) : E →L[𝕜] p :=
  ContinuousLinearMap.fst 𝕜 p q ∘L ↑(prodEquivOfClosedCompl p q h hp hq).symm

variable {p q}

@[deprecated "Use `coe_prodEquivOfIsTopCompl` instead" (since := "2026-06-07")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complemented/Variant6cc20e58a03657aaa2c2684ab671c6d9a4b7ca9bdac908e3dceca020d3db323d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complemented/Variant6cc20e58a03657aaa2c2684ab671c6d9a4b7ca9bdac908e3dceca020d3db323d.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `643fbdb4c83232a0b2605877ecc10f88be967aeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
