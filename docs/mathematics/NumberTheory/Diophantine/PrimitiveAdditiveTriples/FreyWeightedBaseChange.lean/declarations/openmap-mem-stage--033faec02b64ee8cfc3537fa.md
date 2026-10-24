# openMap_mem_stage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb31d2c2-4208-1204-d3db-e3b75f05edb3",
  "kind": "theorem",
  "lexical_name": "openMap_mem_stage",
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
  "slug": "openmap-mem-stage--033faec02b64ee8cfc3537fa",
  "source": {
    "blob": "b4efc276407b9116651191a1141894eb60702c42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 91,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:033faec02b64ee8cfc3537fa055ec89320e2e3b131dacdc130d23bc66db682b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb31d2c2-4208-1204-d3db-e3b75f05edb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem openMap_mem_stage (f : R →+* S) (a b : R) (k : ℕ)
    (u : OpenCurve a b) (hu : u ∈ stage a b k) :
    openMap f a b u ∈ stage (f a) (f b) k := by
  change u ∈ Submodule.span R (generators a b k) at hu
  induction hu using Submodule.span_induction with
  | mem u hu =>
    rcases hu with ⟨i, hi, rfl⟩ | ⟨j, hj, rfl⟩
    · simpa only [map_pow, openMap_x] using
        (Submodule.subset_span (Or.inl ⟨i, hi, rfl⟩) :
          x (f a) (f b) ^ i ∈ stage (f a) (f b) k)
    · simpa only [map_mul, map_pow, openMap_y, openMap_x] using
        (Submodule.subset_span (Or.inr ⟨j, hj, rfl⟩) :
          y (f a) (f b) * x (f a) (f b) ^ j ∈ stage (f a) (f b) k)
  | zero => simpa only [map_zero] using (stage (f a) (f b) k).zero_mem
  | add u v _ _ hu hv =>
    simpa only [map_add] using (stage (f a) (f b) k).add_mem hu hv
  | smul c u _ hu =>
    rw [openMap_smul]
    exact (stage (f a) (f b) k).smul_mem (f c) hu

/-- Semilinear restriction of the independently constructed ring map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4efc276407b9116651191a1141894eb60702c42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
