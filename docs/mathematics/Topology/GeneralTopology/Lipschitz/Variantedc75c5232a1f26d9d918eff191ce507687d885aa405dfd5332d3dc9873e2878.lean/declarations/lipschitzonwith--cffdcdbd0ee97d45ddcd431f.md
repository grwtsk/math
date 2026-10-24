# LipschitzOnWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d47cd2f3629097c058d911244a733bbaf3c88ca7111d202b353d7945441c7b13",
  "kind": "def",
  "lexical_name": "LipschitzOnWith",
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
  "slug": "lipschitzonwith--cffdcdbd0ee97d45ddcd431f",
  "source": {
    "blob": "34369456d4dd5f43a161312693694886cff74203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variantedc75c5232a1f26d9d918eff191ce507687d885aa405dfd5332d3dc9873e2878.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cffdcdbd0ee97d45ddcd431fdfe7f38d479aef6e68517992002a3b7133b889d9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lipschitz/Variantedc75c5232a1f26d9d918eff191ce507687d885aa405dfd5332d3dc9873e2878.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d47cd2f3629097c058d911244a733bbaf3c88ca7111d202b353d7945441c7b13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LipschitzOnWith [PseudoEMetricSpace α] [PseudoEMetricSpace β] (K : ℝ≥0) (f : α → β)
    (s : Set α) :=
  ∀ ⦃x⦄, x ∈ s → ∀ ⦃y⦄, y ∈ s → edist (f x) (f y) ≤ K * edist x y
#align lipschitz_on_with LipschitzOnWith

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lipschitz/Variantedc75c5232a1f26d9d918eff191ce507687d885aa405dfd5332d3dc9873e2878.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lipschitz/Variantedc75c5232a1f26d9d918eff191ce507687d885aa405dfd5332d3dc9873e2878.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34369456d4dd5f43a161312693694886cff74203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
