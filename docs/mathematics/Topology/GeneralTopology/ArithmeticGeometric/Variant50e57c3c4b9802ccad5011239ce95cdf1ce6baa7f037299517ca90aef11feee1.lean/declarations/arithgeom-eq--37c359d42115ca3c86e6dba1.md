# arithGeom_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c933390e-b158-cbb9-2a54-07473fbd727b",
  "kind": "lemma",
  "lexical_name": "arithGeom_eq",
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
  "slug": "arithgeom-eq--37c359d42115ca3c86e6dba1",
  "source": {
    "blob": "49f55a3343dca794a06ab6745084739134e42f09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37c359d42115ca3c86e6dba1f937cde0f3926d479461be2a44d7f7d5c8568a0b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c933390e-b158-cbb9-2a54-07473fbd727b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma arithGeom_eq (ha : a ≠ 1) (n : ℕ) :
    arithGeom a b u₀ n = a ^ n * (u₀ - (b / (1 - a))) + b / (1 - a) := by
  induction n with
  | zero => simp
  | succ n hn => unfold arithGeom; grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArithmeticGeometric/Variant50e57c3c4b9802ccad5011239ce95cdf1ce6baa7f037299517ca90aef11feee1.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49f55a3343dca794a06ab6745084739134e42f09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
