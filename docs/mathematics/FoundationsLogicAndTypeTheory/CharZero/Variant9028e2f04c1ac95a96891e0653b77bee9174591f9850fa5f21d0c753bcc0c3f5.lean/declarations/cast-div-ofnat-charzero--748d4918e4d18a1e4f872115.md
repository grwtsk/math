# cast_div_ofNat_charZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2580be563498e91e4d37bb9d51c7e9674190d71d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ef31b41-2961-b933-fbd3-9322fecc4753",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be765908-4139-1a47-1a6a-c436df0bc7c1",
  "kind": "theorem",
  "lexical_name": "cast_div_ofNat_charZero",
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
  "slug": "cast-div-ofnat-charzero--748d4918e4d18a1e4f872115",
  "source": {
    "blob": "2580be563498e91e4d37bb9d51c7e9674190d71d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/CharZero/Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:748d4918e4d18a1e4f8721152b3d30174a6ac429482c4352c2eaff340c0c217f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/CharZero/Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be765908-4139-1a47-1a6a-c436df0bc7c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_div_ofNat_charZero {k : Type*} [DivisionRing k] [CharZero k] {m n : ℕ}
    (n_dvd : n ∣ m) : (((m : ℤ) / (n : ℤ) : ℤ) : k) = m / n := by
  rw [cast_div_charZero (Int.ofNat_dvd.mpr n_dvd), cast_natCast, cast_natCast]

end Int

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/CharZero/Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/CharZero/Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2580be563498e91e4d37bb9d51c7e9674190d71d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
