# trajContent_eq_lmarginalPartialTraj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf49aed8-9620-24cf-6ff9-dfcb973b4407",
  "kind": "theorem",
  "lexical_name": "trajContent_eq_lmarginalPartialTraj",
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
  "slug": "trajcontent-eq-lmarginalpartialtraj--4511935a53388ab96d0ba3ef",
  "source": {
    "blob": "8f1752e5d91d551ac2645e9ff6e93780bac736ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 252,
    "path": "GRWTSK/Analysis/MeasureTheory/Traj/Variantefbde4a18eb2fc5ea533e9bbba49e704cc08a4cd6d75cbfd0af0b45eb9f8bdc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4511935a53388ab96d0ba3ef632cbf14e553d6e8f11b6504b43a84bd3a582413",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Traj/Variantefbde4a18eb2fc5ea533e9bbba49e704cc08a4cd6d75cbfd0af0b45eb9f8bdc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf49aed8-9620-24cf-6ff9-dfcb973b4407`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trajContent_eq_lmarginalPartialTraj {b : ℕ} {S : Set (Π i : Iic b, X i)}
    (mS : MeasurableSet S) (x₀ : Π n, X n) (a : ℕ) :
    trajContent κ (frestrictLe a x₀) (cylinder (Iic b) S) =
      lmarginalPartialTraj κ a b ((cylinder (Iic b) S).indicator 1) x₀ := by
  rw [trajContent_cylinder mS, ← lintegral_indicator_one mS, lmarginalPartialTraj]
  congr with x
  apply Set.indicator_const_eq_indicator_const
  rw [mem_cylinder]
  congrm (fun i ↦ ?_) ∈ S
  simp [updateFinset, i.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Traj/Variantefbde4a18eb2fc5ea533e9bbba49e704cc08a4cd6d75cbfd0af0b45eb9f8bdc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Traj/Variantefbde4a18eb2fc5ea533e9bbba49e704cc08a4cd6d75cbfd0af0b45eb9f8bdc0.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f1752e5d91d551ac2645e9ff6e93780bac736ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
