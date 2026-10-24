# abs_volumeForm_apply_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "924691273ea55786bc6142fd5823d6882d1a88f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81c48715-4a51-3812-f22e-dc957172509b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d719dc9c-e0e9-5f07-5de8-ca5a750dbdb7",
  "kind": "theorem",
  "lexical_name": "abs_volumeForm_apply_le",
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
  "slug": "abs-volumeform-apply-le--1131f5c14536f5cd446ff71f",
  "source": {
    "blob": "924691273ea55786bc6142fd5823d6882d1a88f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 245,
    "path": "GRWTSK/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1131f5c14536f5cd446ff71ff5c5d917498fda0c2632168f0e36bfa5fc75bc36",
  "verification": {
    "reference": "docs/verification/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d719dc9c-e0e9-5f07-5de8-ca5a750dbdb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_volumeForm_apply_le (v : Fin n → E) : |o.volumeForm v| ≤ ∏ i : Fin n, ‖v i‖ := by
  rcases n with - | n
  · refine o.eq_or_eq_neg_of_isEmpty.elim ?_ ?_ <;> rintro rfl <;> simp
  have : FiniteDimensional ℝ E := .of_fact_finrank_eq_succ n
  have : finrank ℝ E = Fintype.card (Fin n.succ) := by simpa using _i.out
  let b : OrthonormalBasis (Fin n.succ) ℝ E := gramSchmidtOrthonormalBasis this v
  have hb : b.toBasis.det v = ∏ i, ⟪b i, v i⟫ := gramSchmidtOrthonormalBasis_det this v
  rw [o.volumeForm_robust' b, hb, Finset.abs_prod]
  gcongr with i
  convert! abs_real_inner_le_norm (b i) (v i)
  simp [b.orthonormal.1 i]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `924691273ea55786bc6142fd5823d6882d1a88f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
