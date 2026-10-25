# wieferich_mirimanoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "acb0ec6f10e4da6a509d78720119c066e364b9b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33077ab5c0fe5e1854637f10360fb15212e3ef450f7decb6d2863a1446711e69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af125d91-3b18-84d2-123e-9e117f6f3919",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:986ba7b9-b94c-7e42-f1a6-b15cdc39cdda",
  "kind": "theorem",
  "lexical_name": "wieferich_mirimanoff",
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
  "slug": "wieferich-mirimanoff--5fc99c9ce340196f616599d8",
  "source": {
    "blob": "acb0ec6f10e4da6a509d78720119c066e364b9b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Wieferich/Variant33077ab5c0fe5e1854637f10360fb15212e3ef450f7decb6d2863a1446711e69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fc99c9ce340196f616599d8716e8fe6a57ac10748c07afc151b959ca5920476",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Wieferich/Variant33077ab5c0fe5e1854637f10360fb15212e3ef450f7decb6d2863a1446711e69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:986ba7b9-b94c-7e42-f1a6-b15cdc39cdda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wieferich_mirimanoff {p : ℕ} (hp : p.Prime) (p_bound : p < 6000) :
    ¬(2 ^ (p - 1) ≡ 1 [MOD p^2]) ∨ ¬(3 ^ (p - 1) ≡ 1 [MOD p^2]) := by
  obtain hp₄ | hp₄ := lt_or_ge p 4
  · clear p_bound
    revert hp
    decide +revert +kernel
  have hp₁ : p ≠ 1 := hp.ne_one
  obtain h₁ | h₅ := hp.mod_6 (by lia) (by lia)
  · simpa [hp₁] using wieferich_mirimanoff₁ p p_bound h₁
  · simpa [hp₁] using Or.inl <| wieferich₅ p p_bound h₅

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Wieferich/Variant33077ab5c0fe5e1854637f10360fb15212e3ef450f7decb6d2863a1446711e69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Wieferich/Variant33077ab5c0fe5e1854637f10360fb15212e3ef450f7decb6d2863a1446711e69.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acb0ec6f10e4da6a509d78720119c066e364b9b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
