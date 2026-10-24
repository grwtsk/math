# abs_cos_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76e69a38-726d-968d-5efa-044b3ce131a3",
  "kind": "lemma",
  "lexical_name": "abs_cos_eq_one_iff",
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
  "slug": "abs-cos-eq-one-iff--986fbff66b3b6ca0295c918a",
  "source": {
    "blob": "cd3f547b5b6d4f99b4efd0c49772470895d6e9da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 326,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant0453e25ee2ca27ffefdff65549681d403c18584bf427615a337eaa47b6d9a20a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:986fbff66b3b6ca0295c918a73b2c1f17caca0168249a38cf2c967d9da9b61e1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant0453e25ee2ca27ffefdff65549681d403c18584bf427615a337eaa47b6d9a20a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76e69a38-726d-968d-5efa-044b3ce131a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_cos_eq_one_iff {x : ℝ} :
    |cos x| = 1 ↔ ∃ k : ℤ, k * π = x := by
  rw [← abs_one, abs_eq_abs, cos_eq_one_iff, cos_eq_neg_one_iff]
  constructor
  · rintro (⟨n, h⟩ | ⟨n, h⟩)
    · exact ⟨2 * n, by grind⟩
    · exact ⟨1 + n * 2, by grind⟩
  · rintro (⟨n, h⟩)
    obtain (⟨n, rfl⟩ | ⟨n, rfl⟩) := n.even_or_odd
    · exact .inl ⟨n, by grind⟩
    · exact .inr ⟨n, by grind⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant0453e25ee2ca27ffefdff65549681d403c18584bf427615a337eaa47b6d9a20a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant0453e25ee2ca27ffefdff65549681d403c18584bf427615a337eaa47b6d9a20a.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd3f547b5b6d4f99b4efd0c49772470895d6e9da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
