# mkCLMtoNormedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdb403bc5dc73763ae319ffaab896161209e2ade52b8ac86f681ca440861d778",
  "kind": "def",
  "lexical_name": "mkCLMtoNormedSpace",
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
  "slug": "mkclmtonormedspace--18958135246d8e5628db0ab0",
  "source": {
    "blob": "5b4a9c9cc147973695cfef46415308ed215424ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 646,
    "line": 621,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18958135246d8e5628db0ab0e365076ec4e8e9b1c187985c7c59da08467cfab4",
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

Occurrence: `declaration:bdb403bc5dc73763ae319ffaab896161209e2ade52b8ac86f681ca440861d778`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkCLMtoNormedSpace [RingHomIsometric σ] (A : 𝓢(D, E) → G)
    (hadd : ∀ (f g : 𝓢(D, E)), A (f + g) = A f + A g)
    (hsmul : ∀ (a : 𝕜) (f : 𝓢(D, E)), A (a • f) = σ a • A f)
    (hbound : ∃ (s : Finset (ℕ × ℕ)) (C : ℝ), 0 ≤ C ∧ ∀ (f : 𝓢(D, E)),
      ‖A f‖ ≤ C * s.sup (schwartzSeminormFamily 𝕜 D E) f) :
    𝓢(D, E) →SL[σ] G :=
  letI f : 𝓢(D, E) →ₛₗ[σ] G :=
    { toFun := (A ·)
      map_add' := hadd
      map_smul' := hsmul }
  { toLinearMap := f
    cont := by
      change Continuous (LinearMap.mk _ _)
      apply WithSeminorms.continuous_normedSpace_rng G (schwartz_withSeminorms 𝕜 D E)
      rcases hbound with ⟨s, C, hC, h⟩
      exact ⟨s, ⟨C, hC⟩, h⟩ }

end CLM

section EvalCLM

variable [NormedField 𝕜]
variable [NormedAddCommGroup G] [NormedSpace ℝ G] [NormedSpace 𝕜 G] [SMulCommClass ℝ 𝕜 G]

variable (𝕜 E G) in
/-- The map applying a vector to Hom-valued Schwartz function as a continuous linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b4a9c9cc147973695cfef46415308ed215424ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
