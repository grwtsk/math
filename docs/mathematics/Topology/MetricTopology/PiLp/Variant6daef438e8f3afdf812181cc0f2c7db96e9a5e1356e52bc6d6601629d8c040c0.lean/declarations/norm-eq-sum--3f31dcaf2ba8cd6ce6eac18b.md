# norm_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db7ea5a2-9a3c-1c21-7360-bee192d137a8",
  "kind": "theorem",
  "lexical_name": "norm_eq_sum",
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
  "slug": "norm-eq-sum--3f31dcaf2ba8cd6ce6eac18b",
  "source": {
    "blob": "0c107415cf7cea70f9788cccb8e7a2f52584748a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 252,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f31dcaf2ba8cd6ce6eac18b323c9b998d713d0c172e37273398dd7ff236c378",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db7ea5a2-9a3c-1c21-7360-bee192d137a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_sum (hp : 0 < p.toReal) (f : PiLp p β) :
    ‖f‖ = (∑ i, ‖f i‖ ^ p.toReal) ^ (1 / p.toReal) :=
  let hp' := ENNReal.toReal_pos_iff.mp hp
  (if_neg hp'.1.ne').trans (if_neg hp'.2.ne)
#align pi_Lp.norm_eq_sum PiLp.norm_eq_sum

end Norm

end DistNorm

section Aux

/-!
### The uniformity on finite `L^p` products is the product uniformity

In this section, we put the `L^p` edistance on `PiLp p α`, and we check that the uniformity
coming from this edistance coincides with the product uniformity, by showing that the canonical
map to the Pi type (with the `L^∞` distance) is a uniform embedding, as it is both Lipschitz and
antiLipschitz.

We only register this emetric space structure as a temporary instance, as the true instance (to be
registered later) will have as uniformity exactly the product uniformity, instead of the one coming
from the edistance (which is equal to it, but not defeq). See Note [forgetful inheritance]
explaining why having definitionally the right uniformity is often important.
-/


variable [Fact (1 ≤ p)] [∀ i, PseudoMetricSpace (α i)] [∀ i, PseudoEMetricSpace (β i)]

variable [Fintype ι]

/-- Endowing the space `PiLp p β` with the `L^p` pseudoemetric structure. This definition is not
satisfactory, as it does not register the fact that the topology and the uniform structure coincide
with the product one. Therefore, we do not register it as an instance. Using this as a temporary
pseudoemetric space instance, we will show that the uniform structure is equal (but not defeq) to
the product one, and then register an instance in which we replace the uniform structure by the
product one using this pseudoemetric space and `PseudoEMetricSpace.replaceUniformity`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c107415cf7cea70f9788cccb8e7a2f52584748a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
