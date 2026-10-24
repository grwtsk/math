# norm_iteratedFDeriv_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf709ddf-3ec9-7afc-6966-5be22fee70b0",
  "kind": "lemma",
  "lexical_name": "norm_iteratedFDeriv_le'",
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
  "slug": "norm-iteratedfderiv-le--7c196f7ceac9d190ec3c2e46",
  "source": {
    "blob": "7c4f4f226ccd3b3a4dc39673aa52f23372ff4c5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1251,
    "line": 1224,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c196f7ceac9d190ec3c2e46ef69530d6bedd08c4f5d4a61c1459bf7ca671775",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf709ddf-3ec9-7afc-6966-5be22fee70b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1224–1251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_iteratedFDeriv_le' (f : ContinuousMultilinearMap 𝕜 E₁ G) (k : ℕ) (x : (i : ι) → E₁ i) :
    ‖f.iteratedFDeriv k x‖
      ≤ Nat.descFactorial (Fintype.card ι) k * ‖f‖ * ‖x‖ ^ (Fintype.card ι - k) := by
  classical
  calc ‖f.iteratedFDeriv k x‖
  _ ≤ ∑ e : Fin k ↪ ι, ‖iteratedFDerivComponent f e.toEquivRange (fun i ↦ x i)‖ := norm_sum_le _ _
  _ ≤ ∑ _ : Fin k ↪ ι, ‖f‖ * ‖x‖ ^ (Fintype.card ι - k) := by
    gcongr with e _
    simpa using norm_iteratedFDerivComponent_le f e.toEquivRange x
  _ = Nat.descFactorial (Fintype.card ι) k * ‖f‖ * ‖x‖ ^ (Fintype.card ι - k) := by
    simp [card_univ, mul_assoc]

end ContinuousMultilinearMap

end Seminorm

section Norm

namespace ContinuousMultilinearMap

/-! Results that are only true if the target space is a `NormedAddCommGroup` (and not just a
`SeminormedAddCommGroup`). -/

variable {𝕜 : Type u} {ι : Type v} {E : ι → Type wE} {G : Type wG} {G' : Type wG'} [Fintype ι]
  [NontriviallyNormedField 𝕜] [∀ i, SeminormedAddCommGroup (E i)] [∀ i, NormedSpace 𝕜 (E i)]
  [NormedAddCommGroup G] [NormedSpace 𝕜 G] [SeminormedAddCommGroup G'] [NormedSpace 𝕜 G']

/-- A continuous linear map is zero iff its norm vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean#L1224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c4f4f226ccd3b3a4dc39673aa52f23372ff4c5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
