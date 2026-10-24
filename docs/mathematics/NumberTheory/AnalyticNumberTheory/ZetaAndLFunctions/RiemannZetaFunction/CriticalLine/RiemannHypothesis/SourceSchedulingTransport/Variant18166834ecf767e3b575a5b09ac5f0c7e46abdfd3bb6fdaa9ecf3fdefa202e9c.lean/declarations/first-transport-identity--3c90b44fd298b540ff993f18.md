# first_transport_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2018f2eb-d78e-1519-bd18-84c6cbae2394",
  "kind": "theorem",
  "lexical_name": "first_transport_identity",
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
  "slug": "first-transport-identity--3c90b44fd298b540ff993f18",
  "source": {
    "blob": "d6d7f0908c9db3f33e571885d547355bce87c364",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 191,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variant18166834ecf767e3b575a5b09ac5f0c7e46abdfd3bb6fdaa9ecf3fdefa202e9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c90b44fd298b540ff993f181b23b4af4d85209a98bc8bca7d65e5af35dd6041",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variant18166834ecf767e3b575a5b09ac5f0c7e46abdfd3bb6fdaa9ecf3fdefa202e9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2018f2eb-d78e-1519-bd18-84c6cbae2394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_transport_identity (c b d : ι → ℝ) (f g : ℝ → ℝ)
    (P : ι → ι → ℝ)
    (hb : ∀ i, b i = (∑ j, P i j) - ∑ j, P j i) :
    readout c b d f g =
      (∑ i, ∑ j, P i j * (f (c i) - f (c j) - (c i - c j) * g (c j))) +
      ∑ j, inducedDrift c d P j * g (c j) := by
  have hmass : (∑ i, b i * f (c i)) =
      ∑ i, ∑ j, P i j * (f (c i) - f (c j)) := by
    simp_rw [hb, sub_mul, Finset.sum_mul, mul_sub, Finset.sum_sub_distrib]
    rw [Finset.sum_comm (f := fun i j => P j i * f (c i))]
  have hd (j : ι) : inducedDrift c d P j * g (c j) =
      d j * g (c j) + ∑ i, P i j * ((c i - c j) * g (c j)) := by
    unfold inducedDrift
    rw [add_mul, Finset.sum_mul]
    congr 1
    apply Finset.sum_congr rfl
    intro i _
    ring
  have ht (i j : ι) :
      P i j * (f (c i) - f (c j) - (c i - c j) * g (c j)) =
        P i j * (f (c i) - f (c j)) - P i j * ((c i - c j) * g (c j)) := by ring
  unfold readout
  rw [Finset.sum_add_distrib, hmass]
  simp only [hd, ht, Finset.sum_sub_distrib, Finset.sum_add_distrib]
  rw [Finset.sum_comm (f := fun j i => P i j * ((c i - c j) * g (c j)))]
  ring

/-- Both affine identities force total induced drift zero, not receiverwise zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variant18166834ecf767e3b575a5b09ac5f0c7e46abdfd3bb6fdaa9ecf3fdefa202e9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variant18166834ecf767e3b575a5b09ac5f0c7e46abdfd3bb6fdaa9ecf3fdefa202e9c.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6d7f0908c9db3f33e571885d547355bce87c364` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
