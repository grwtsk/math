# gaugeRescaleEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd83308e2f9f13b90a707e21c37c55af2d7c908b7cdcb1b0cc9a8e56cc5e2a79",
  "kind": "def",
  "lexical_name": "gaugeRescaleEquiv",
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
  "slug": "gaugerescaleequiv--6c415d941b65c62abaf3ce11",
  "source": {
    "blob": "64784ae3b43688b0a149aeb865cd49946003f87f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c415d941b65c62abaf3ce11d078dd7ee08ebb6cc83e29bc4e3d513161d6f988",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd83308e2f9f13b90a707e21c37c55af2d7c908b7cdcb1b0cc9a8e56cc5e2a79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gaugeRescaleEquiv (s t : Set E) (hsa : Absorbent ℝ s) (hsb : IsVonNBounded ℝ s)
    (hta : Absorbent ℝ t) (htb : IsVonNBounded ℝ t) : E ≃ E where
  toFun := gaugeRescale s t
  invFun := gaugeRescale t s
  left_inv x := by rw [gaugeRescale_gaugeRescale, gaugeRescale_self_apply] <;> assumption
  right_inv x := by rw [gaugeRescale_gaugeRescale, gaugeRescale_self_apply] <;> assumption

end

variable [IsTopologicalAddGroup E] [ContinuousSMul ℝ E] {s t : Set E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64784ae3b43688b0a149aeb865cd49946003f87f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
