# CFC.pow_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:764073d0-5852-ae6f-ed9b-7f23e4f92bc1",
  "kind": "lemma",
  "lexical_name": "CFC.pow_eq_zero_iff",
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
  "slug": "cfc-pow-eq-zero-iff--f2eae8d693f91e0742cdc5fc",
  "source": {
    "blob": "80944cc700ffac05f1890454cca4432c1bc98d6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 780,
    "line": 770,
    "path": "GRWTSK/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2eae8d693f91e0742cdc5fcfec1cb51e8459653c4cd074ddbaf68dce30cb651",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:764073d0-5852-ae6f-ed9b-7f23e4f92bc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 770–780.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CFC.pow_eq_zero_iff (a : A) (n : ℕ) (hn : n ≠ 0) (hp : p a := by cfc_tac) :
    a ^ n = 0 ↔ a = 0 := by
  refine ⟨fun h ↦ ?_, by rintro rfl; simp [hn]⟩
  refine CFC.eq_zero_of_spectrum_subset_zero (R := R) a fun r hr ↦ ?_
  rw [← cfc_id' R a, ← cfc_pow .., ← cfc_zero (R := R) a, cfc_eq_cfc_iff_eqOn] at h
  simpa [hn] using h hr

variable [ContinuousInv₀ R] (f : R → R) (a : A)

/-- Bundle `cfc f a` into a unit given a proof that `f` is nonzero on the spectrum of `a`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean#L770).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80944cc700ffac05f1890454cca4432c1bc98d6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
