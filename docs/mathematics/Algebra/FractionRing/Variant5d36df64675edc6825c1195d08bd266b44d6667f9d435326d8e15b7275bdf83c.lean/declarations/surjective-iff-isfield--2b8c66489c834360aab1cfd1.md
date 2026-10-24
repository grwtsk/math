# surjective_iff_isField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7bfae6bbb41fd2c98a31988c8b3a1be32dac730",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d36df64675edc6825c1195d08bd266b44d6667f9d435326d8e15b7275bdf83c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:978249c0-dbc5-fb6f-943c-66c6e649074a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62dc2fd7-0987-d133-f193-74c9f8ded40e",
  "kind": "lemma",
  "lexical_name": "surjective_iff_isField",
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
  "slug": "surjective-iff-isfield--2b8c66489c834360aab1cfd1",
  "source": {
    "blob": "d7bfae6bbb41fd2c98a31988c8b3a1be32dac730",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 155,
    "path": "GRWTSK/Algebra/FractionRing/Variant5d36df64675edc6825c1195d08bd266b44d6667f9d435326d8e15b7275bdf83c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b8c66489c834360aab1cfd1750a4956320c20ad367f4bdfe42e93b574b04c71",
  "verification": {
    "reference": "docs/verification/Algebra/FractionRing/Variant5d36df64675edc6825c1195d08bd266b44d6667f9d435326d8e15b7275bdf83c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62dc2fd7-0987-d133-f193-74c9f8ded40e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surjective_iff_isField [IsDomain R] : Function.Surjective (algebraMap R K) ↔ IsField R where
  mp h := (RingEquiv.ofBijective (algebraMap R K)
      ⟨IsFractionRing.injective R K, h⟩).toMulEquiv.isField _ (IsFractionRing.toField R).toIsField
  mpr h :=
    letI := h.toField
    (IsLocalization.atUnits R _ (S := K)
      (fun _ hx ↦ Ne.isUnit (mem_nonZeroDivisors_iff_ne_zero.mp hx))).surjective

end CommRing

variable {B : Type*} [CommRing B] [IsDomain B] [Field K] {L : Type*} [Field L] [Algebra A K]
  [IsFractionRing A K] {g : A →+* L}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FractionRing/Variant5d36df64675edc6825c1195d08bd266b44d6667f9d435326d8e15b7275bdf83c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FractionRing/Variant5d36df64675edc6825c1195d08bd266b44d6667f9d435326d8e15b7275bdf83c.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7bfae6bbb41fd2c98a31988c8b3a1be32dac730` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
