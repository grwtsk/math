# sub_eq_add_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7befc12-9985-e229-6f75-758b82f7347c",
  "kind": "theorem",
  "lexical_name": "sub_eq_add_neg",
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
  "slug": "sub-eq-add-neg--97e8c7e768c2fdcfcdf95138",
  "source": {
    "blob": "4a8bbdbfa9f103f20b5f740dd71af1b30bc0d541",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 178,
    "path": "GRWTSK/Algebra/Envelope/Variant449aadc99ab1ded0a3dcdfcc8d570653aebf722f6d2ea0d3c042c825851015bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97e8c7e768c2fdcfcdf951384c1fdc32f4508ec898efd2bcff42460820a786ab",
  "verification": {
    "reference": "docs/verification/Algebra/Envelope/Variant449aadc99ab1ded0a3dcdfcc8d570653aebf722f6d2ea0d3c042c825851015bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7befc12-9985-e229-6f75-758b82f7347c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_eq_add_neg (a b : Q α) : sub a b = add a (neg b) := by
  obtain ⟨⟨_, _⟩⟩ := a
  obtain ⟨⟨_, _⟩⟩ := b
  simp; apply Quot.sound; simp; refine ⟨0, ?_⟩; ac_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Envelope/Variant449aadc99ab1ded0a3dcdfcc8d570653aebf722f6d2ea0d3c042c825851015bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Envelope/Variant449aadc99ab1ded0a3dcdfcc8d570653aebf722f6d2ea0d3c042c825851015bf.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a8bbdbfa9f103f20b5f740dd71af1b30bc0d541` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
