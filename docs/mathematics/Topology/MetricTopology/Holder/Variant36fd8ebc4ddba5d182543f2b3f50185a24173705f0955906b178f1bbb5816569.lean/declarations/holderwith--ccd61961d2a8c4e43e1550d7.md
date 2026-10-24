# HolderWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c104e2c490d24b680b076dc12837fc7197383dc7667a3e3938356606fdd5b12",
  "kind": "def",
  "lexical_name": "HolderWith",
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
  "slug": "holderwith--ccd61961d2a8c4e43e1550d7",
  "source": {
    "blob": "f1c185c26b8e8d9ab5a40110cda9a36909eed6ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 58,
    "path": "GRWTSK/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccd61961d2a8c4e43e1550d75a0ccc574a7989d511b57ff8964752dddf9c2cf5",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c104e2c490d24b680b076dc12837fc7197383dc7667a3e3938356606fdd5b12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HolderWith (C r : ℝ≥0) (f : X → Y) : Prop :=
  ∀ x y, edist (f x) (f y) ≤ (C : ℝ≥0∞) * edist x y ^ (r : ℝ)
#align holder_with HolderWith

/-- A function `f : X → Y` between two `PseudoEMetricSpace`s is Hölder continuous with constant
`C : ℝ≥0` and exponent `r : ℝ≥0` on a set `s : set X`, if `edist (f x) (f y) ≤ C * edist x y ^ r`
for all `x y ∈ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Holder/Variant36fd8ebc4ddba5d182543f2b3f50185a24173705f0955906b178f1bbb5816569.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1c185c26b8e8d9ab5a40110cda9a36909eed6ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
