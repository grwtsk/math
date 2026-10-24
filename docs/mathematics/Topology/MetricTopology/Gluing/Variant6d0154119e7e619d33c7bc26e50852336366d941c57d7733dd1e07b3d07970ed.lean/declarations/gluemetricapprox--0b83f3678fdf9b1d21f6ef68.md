# glueMetricApprox

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bca746dacd40b1944cbb71ccf5b6fe2db3139395f77ca3fbb0fbf9484821679",
  "kind": "def",
  "lexical_name": "glueMetricApprox",
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
  "slug": "gluemetricapprox--0b83f3678fdf9b1d21f6ef68",
  "source": {
    "blob": "56f47c2b3bdd78f64a8420da4032be837ee8333e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 189,
    "path": "GRWTSK/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b83f3678fdf9b1d21f6ef687c58894ff6566e98137e0ca6d85ba952ab647989",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bca746dacd40b1944cbb71ccf5b6fe2db3139395f77ca3fbb0fbf9484821679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def glueMetricApprox [Nonempty Z] (Φ : Z → X) (Ψ : Z → Y) (ε : ℝ) (ε0 : 0 < ε)
    (H : ∀ p q, |dist (Φ p) (Φ q) - dist (Ψ p) (Ψ q)| ≤ 2 * ε) : MetricSpace (X ⊕ Y) where
  dist := glueDist Φ Ψ ε
  dist_self := glueDist_self Φ Ψ ε
  dist_comm := glueDist_comm Φ Ψ ε
  dist_triangle := glueDist_triangle Φ Ψ ε H
  eq_of_dist_eq_zero := eq_of_glueDist_eq_zero Φ Ψ ε ε0 _ _
  toUniformSpace := Sum.instUniformSpace
  uniformity_dist := uniformity_dist_of_mem_uniformity _ _ <| Sum.mem_uniformity_iff_glueDist ε0

end ApproxGluing

section Sum

/-!
### Metric on `X ⊕ Y`

A particular case of the previous construction is when one uses basepoints in `X` and `Y` and one
glues only along the basepoints, putting them at distance 1. We give a direct definition of
the distance, without `iInf`, as it is easier to use in applications, and show that it is equal to
the gluing distance defined above to take advantage of the lemmas we have already proved.
-/
variable {X : Type u} {Y : Type v}
variable [MetricSpace X] [MetricSpace Y]

/-- Distance on a disjoint union. There are many (noncanonical) ways to put a distance compatible
with each factor.
If the two spaces are bounded, one can say for instance that each point in the first is at distance
`diam X + diam Y + 1` of each point in the second.
Instead, we choose a construction that works for unbounded spaces, but requires basepoints,
chosen arbitrarily.
We embed isometrically each factor, set the basepoints at distance 1,
arbitrarily, and say that the distance from `a` to `b` is the sum of the distances of `a` and `b` to
their respective basepoints, plus the distance 1 between the basepoints.
Since there is an arbitrary choice in this construction, it is not an instance by default. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56f47c2b3bdd78f64a8420da4032be837ee8333e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
