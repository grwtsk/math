# neTopHomeomorphNNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58b59150e0891150269928c1b7d363e087d311eb9c1ebae031cb3e686dbaaef8",
  "kind": "def",
  "lexical_name": "neTopHomeomorphNNReal",
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
  "slug": "netophomeomorphnnreal--9e03a412daeb61848b46f6be",
  "source": {
    "blob": "991ff3ff54c2c6b84eae48c935d8aab3ab0c6ac3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant97e58fedaf3ffda0f0946d84352707a3441d4182d01b2778fdb0c009a209012a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e03a412daeb61848b46f6be07487a8e4d5cd801b40e134a64ffe37e5236b1ec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant97e58fedaf3ffda0f0946d84352707a3441d4182d01b2778fdb0c009a209012a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58b59150e0891150269928c1b7d363e087d311eb9c1ebae031cb3e686dbaaef8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def neTopHomeomorphNNReal : { a | a ≠ ∞ } ≃ₜ ℝ≥0 where
  toEquiv := neTopEquivNNReal
  continuous_toFun := continuousOn_iff_continuous_restrict.1 continuousOn_toNNReal
  continuous_invFun := continuous_coe.subtype_mk _

/-- The set of finite `ℝ≥0∞` numbers is homeomorphic to `ℝ≥0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant97e58fedaf3ffda0f0946d84352707a3441d4182d01b2778fdb0c009a209012a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant97e58fedaf3ffda0f0946d84352707a3441d4182d01b2778fdb0c009a209012a.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991ff3ff54c2c6b84eae48c935d8aab3ab0c6ac3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
