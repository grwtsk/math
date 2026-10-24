# liftPath_apply_one_eq_of_homotopicRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79d8dff1-5333-bc8c-4bc6-046a8a361b6f",
  "kind": "theorem",
  "lexical_name": "liftPath_apply_one_eq_of_homotopicRel",
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
  "slug": "liftpath-apply-one-eq-of-homotopicrel--7e706f043e2cf28e0beca0b7",
  "source": {
    "blob": "563550223778da73d8509d3eb6f87cd99da7cae7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 342,
    "path": "GRWTSK/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e706f043e2cf28e0beca0b70de34f4d3ecf0233822fa2085a406d7c8d3253e2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79d8dff1-5333-bc8c-4bc6-046a8a361b6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftPath_apply_one_eq_of_homotopicRel {γ₀ γ₁ : C(I, X)}
    (h : γ₀.HomotopicRel γ₁ {0,1}) (e : E) (h₀ : γ₀ 0 = p e) (h₁ : γ₁ 0 = p e) :
    cov.liftPath γ₀ e h₀ 1 = cov.liftPath γ₁ e h₁ 1 := by
  obtain ⟨H⟩ := h
  have := cov.liftHomotopyRel (f₀' := cov.liftPath γ₀ e h₀) (f₁' := cov.liftPath γ₁ e h₁) H
    ⟨0, .inl rfl, by simp_rw [liftPath_zero]⟩ (liftPath_lifts ..) (liftPath_lifts ..)
  rw [← this.eq_fst 0 (.inr rfl), ← this.eq_snd 0 (.inr rfl)]

/-- A covering map induces an injection on all Hom-sets of the fundamental groupoid,
  in particular on the fundamental group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `563550223778da73d8509d3eb6f87cd99da7cae7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
