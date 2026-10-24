# injOn_circleMap_of_abs_sub_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b623d23e-f998-1c06-bc63-7f4700a3db7a",
  "kind": "theorem",
  "lexical_name": "injOn_circleMap_of_abs_sub_le'",
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
  "slug": "injon-circlemap-of-abs-sub-le--2ab609b7c255c36c5dc039c5",
  "source": {
    "blob": "2c93ea0cb4dcd0664c2722afb5e6a555b4f1ba30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 184,
    "path": "GRWTSK/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ab609b7c255c36c5dc039c53e36e4a778afe846dd4a2f6b0741cd841a403585",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b623d23e-f998-1c06-bc63-7f4700a3db7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injOn_circleMap_of_abs_sub_le' {a b R : ℝ} {c : ℂ} (h_R : R ≠ 0) (_ : b - a ≤ 2 * π) :
    (Set.Ico a b).InjOn (circleMap c R) := by
  rintro _ ⟨_, _⟩ _ ⟨_, _⟩ h
  apply eq_of_circleMap_eq h_R _ h
  rw [abs_lt]
  constructor <;> linarith

end circleMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c93ea0cb4dcd0664c2722afb5e6a555b4f1ba30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
