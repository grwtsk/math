# not_isLocalRing_of_nontrivial_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73f8b83cadec769048ba24e9226c0775521ce60d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3716351-8f5f-f11b-e0c0-d5f5013edad5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdc4a9c3-0b3d-0088-5753-0d797be9ae95",
  "kind": "theorem",
  "lexical_name": "not_isLocalRing_of_nontrivial_pi",
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
  "slug": "not-islocalring-of-nontrivial-pi--7a5861e482de45d09d6f8692",
  "source": {
    "blob": "73f8b83cadec769048ba24e9226c0775521ce60d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 42,
    "path": "GRWTSK/Algebra/NonLocalRing/Variantdb2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a5861e482de45d09d6f8692c2a46b3e2a4cf82f5888cd3173336434dca4e997",
  "verification": {
    "reference": "docs/verification/Algebra/NonLocalRing/Variantdb2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdc4a9c3-0b3d-0088-5753-0d797be9ae95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isLocalRing_of_nontrivial_pi {ι : Type*} [Nontrivial ι] (R : ι → Type*)
    [∀ i, Semiring (R i)] [∀ i, Nontrivial (R i)] : ¬IsLocalRing (Π i, R i) := by
  classical
  let ⟨i₁, i₂, hi⟩ := exists_pair_ne ι
  have ha : ¬IsUnit (fun i ↦ if i = i₁ then 0 else 1 : Π i, R i) :=
    fun h ↦ not_isUnit_zero (M₀ := R i₁) (by simpa using h.map (Pi.evalRingHom R i₁))
  have hb : ¬IsUnit (fun i ↦ if i = i₁ then 1 else 0 : Π i, R i) :=
    fun h ↦ not_isUnit_zero (M₀ := R i₂) (by simpa [hi.symm] using h.map (Pi.evalRingHom R i₂))
  exact not_isLocalRing_def ha hb (by ext; dsimp; split <;> simp)

/-- The product of two nontrivial (semi)rings is not local. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonLocalRing/Variantdb2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonLocalRing/Variantdb2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73f8b83cadec769048ba24e9226c0775521ce60d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
