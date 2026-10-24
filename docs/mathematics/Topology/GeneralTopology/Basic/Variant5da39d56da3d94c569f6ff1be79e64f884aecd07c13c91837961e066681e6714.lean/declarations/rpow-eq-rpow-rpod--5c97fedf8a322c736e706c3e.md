# rpow_eq_rpow_rpod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:613d35ef-117e-4624-f6a3-eb8795a8d0a8",
  "kind": "lemma",
  "lexical_name": "rpow_eq_rpow_rpod",
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
  "slug": "rpow-eq-rpow-rpod--5c97fedf8a322c736e706c3e",
  "source": {
    "blob": "fc272c1b3532f1436f3cf02ed48bd066109c9e79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 444,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5da39d56da3d94c569f6ff1be79e64f884aecd07c13c91837961e066681e6714.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c97fedf8a322c736e706c3e931edd768a0b56f45a1d15481f5737298fdb7421",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant5da39d56da3d94c569f6ff1be79e64f884aecd07c13c91837961e066681e6714.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:613d35ef-117e-4624-f6a3-eb8795a8d0a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rpow_eq_rpow_rpod {a : A} {b : B} {x : ℝ} (ha : 0 ∉ spectrum ℝ≥0 a) (hb : 0 ∉ spectrum ℝ≥0 b)
    (ha' : 0 ≤ a := by cfc_tac) (hb' : 0 ≤ b := by cfc_tac) :
    rpow (a, b) x = (a, b) ^ x := rpow_map_prod ha hb

end prod

section pi

variable [IsTopologicalRing A] [T2Space A]
variable {ι : Type*} {C : ι → Type*} [∀ i, PartialOrder (C i)] [∀ i, Ring (C i)]
  [∀ i, StarRing (C i)] [∀ i, TopologicalSpace (C i)] [∀ i, StarOrderedRing (C i)]
  [StarOrderedRing (∀ i, C i)]
  [∀ i, Algebra ℝ (C i)] [∀ i, ContinuousFunctionalCalculus ℝ (C i) IsSelfAdjoint]
  [ContinuousFunctionalCalculus ℝ (∀ i, C i) IsSelfAdjoint]
  [∀ i, IsTopologicalRing (C i)] [∀ i, T2Space (C i)]
  [NonnegSpectrumClass ℝ (∀ i, C i)] [∀ i, NonnegSpectrumClass ℝ (C i)]

/- Note that there is a higher-priority instance of `Pow (∀ i, B i) ℝ` coming from the `Pow`
instance for pi types, hence the direct use of `rpow` here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant5da39d56da3d94c569f6ff1be79e64f884aecd07c13c91837961e066681e6714.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant5da39d56da3d94c569f6ff1be79e64f884aecd07c13c91837961e066681e6714.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc272c1b3532f1436f3cf02ed48bd066109c9e79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
