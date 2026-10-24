# toPadicInt_comp_fromPadicInt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c99776913713c3804774ca70e4b71997dceb405a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81b69285-60c8-11b1-39f8-eb658771692c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01189d2a-bb8b-825d-8293-051714fab233",
  "kind": "theorem",
  "lexical_name": "toPadicInt_comp_fromPadicInt",
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
  "slug": "topadicint-comp-frompadicint--09a8d4f63f6d087eca809fc1",
  "source": {
    "blob": "c99776913713c3804774ca70e4b71997dceb405a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09a8d4f63f6d087eca809fc1d28b04cb3f4fc81288335cea46a5390ad755c7e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01189d2a-bb8b-825d-8293-051714fab233`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toPadicInt_comp_fromPadicInt : (toPadicInt p).comp (fromPadicInt p) = RingHom.id ℤ_[p] := by
  rw [← PadicInt.toZModPow_eq_iff_ext]
  intro n
  rw [← RingHom.comp_assoc, toPadicInt, PadicInt.lift_spec]
  simp only [fromPadicInt, toZModPow, RingHom.comp_id]
  rw [RingHom.comp_assoc, truncate_comp_lift, ← RingHom.comp_assoc]
  simp only [RingEquiv.symm_toRingHom_comp_toRingHom, RingHom.id_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c99776913713c3804774ca70e4b71997dceb405a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
