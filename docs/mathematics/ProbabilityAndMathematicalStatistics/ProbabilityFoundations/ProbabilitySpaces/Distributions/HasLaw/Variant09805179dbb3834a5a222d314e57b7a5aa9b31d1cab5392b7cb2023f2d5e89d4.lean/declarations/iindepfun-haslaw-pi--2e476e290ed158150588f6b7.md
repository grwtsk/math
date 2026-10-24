# iIndepFun.hasLaw_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a7aae38-86a7-accf-da01-6655ce2c2e2d",
  "kind": "lemma",
  "lexical_name": "iIndepFun.hasLaw_pi",
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
  "slug": "iindepfun-haslaw-pi--2e476e290ed158150588f6b7",
  "source": {
    "blob": "80fcd3a6f302aacb2def6456a03bf932c134f25d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 264,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant09805179dbb3834a5a222d314e57b7a5aa9b31d1cab5392b7cb2023f2d5e89d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e476e290ed158150588f6b7f221cd593b341bbc27e7e33b3b2e7d6afba472f9",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant09805179dbb3834a5a222d314e57b7a5aa9b31d1cab5392b7cb2023f2d5e89d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a7aae38-86a7-accf-da01-6655ce2c2e2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iIndepFun.hasLaw_pi {ι : Type*} [Fintype ι] {𝓧 : ι → Type*} {m𝓧 : ∀ i, MeasurableSpace (𝓧 i)}
    {μ : (i : ι) → Measure (𝓧 i)} {X : (i : ι) → Ω → 𝓧 i} (hX : ∀ i, HasLaw (X i) (μ i) P)
    (h : iIndepFun X P) :
    HasLaw (fun ω i ↦ X i ω) (Measure.pi μ) P where
  map_eq := by
    rw [h.map_fun_eq_pi_map (by fun_prop)]
    simp_rw [fun i ↦ (hX i).map_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant09805179dbb3834a5a222d314e57b7a5aa9b31d1cab5392b7cb2023f2d5e89d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant09805179dbb3834a5a222d314e57b7a5aa9b31d1cab5392b7cb2023f2d5e89d4.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80fcd3a6f302aacb2def6456a03bf932c134f25d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
