# compCLMOfAntilipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e06b0107d95f778ae0b98ae3f7d0be0bc7445549b5d3b5350ae40735220c0e6",
  "kind": "def",
  "lexical_name": "compCLMOfAntilipschitz",
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
  "slug": "compclmofantilipschitz--cb9ebaa655a75a3439fee3e7",
  "source": {
    "blob": "5b4a9c9cc147973695cfef46415308ed215424ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 998,
    "line": 980,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb9ebaa655a75a3439fee3e76a3d8d7378d90cfae60211ddff13651b4d8b8067",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e06b0107d95f778ae0b98ae3f7d0be0bc7445549b5d3b5350ae40735220c0e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 980–998.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compCLMOfAntilipschitz {K : ℝ≥0} {g : D → E}
    (hg : g.HasTemperateGrowth) (h'g : AntilipschitzWith K g) :
    𝓢(E, F) →L[𝕜] 𝓢(D, F) := by
  refine compCLM 𝕜 hg ⟨1, K * max 1 ‖g 0‖, fun x ↦ ?_⟩
  calc
  ‖x‖ ≤ K * ‖g x - g 0‖ := by
    rw [← dist_zero_right, ← dist_eq_norm]
    apply h'g.le_mul_dist
  _ ≤ K * (‖g x‖ + ‖g 0‖) := by
    gcongr
    exact norm_sub_le _ _
  _ ≤ K * (‖g x‖ + max 1 ‖g 0‖) := by
    gcongr
    exact le_max_right _ _
  _ ≤ (K * max 1 ‖g 0‖ : ℝ) * (1 + ‖g x‖) ^ 1 := by
    simp only [mul_add, add_comm (K * ‖g x‖), pow_one, mul_one, add_le_add_iff_left]
    gcongr
    exact le_mul_of_one_le_right (by positivity) (le_max_left _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean#L980).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b4a9c9cc147973695cfef46415308ed215424ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
