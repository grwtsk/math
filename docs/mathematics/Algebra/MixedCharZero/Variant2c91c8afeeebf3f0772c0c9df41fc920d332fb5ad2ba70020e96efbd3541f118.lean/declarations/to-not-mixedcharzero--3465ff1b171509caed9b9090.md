# to_not_mixedCharZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce50f18412cf34a2d0040b5e72477abd5ff8b7fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68ddce20-edc6-ad5d-090d-5c77ec25cb5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:973a6ea5-e203-78b0-8523-bf1e60eb4779",
  "kind": "theorem",
  "lexical_name": "to_not_mixedCharZero",
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
  "slug": "to-not-mixedcharzero--3465ff1b171509caed9b9090",
  "source": {
    "blob": "ce50f18412cf34a2d0040b5e72477abd5ff8b7fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 266,
    "path": "GRWTSK/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3465ff1b171509caed9b9090ad907894898bbddd73b57e7517e78ddedf7c7876",
  "verification": {
    "reference": "docs/verification/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:973a6ea5-e203-78b0-8523-bf1e60eb4779`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem to_not_mixedCharZero (h : ∀ I : Ideal R, I ≠ ⊤ → CharZero (R ⧸ I)) :
    ∀ p > 0, ¬MixedCharZero R p := by
  intro p p_pos
  by_contra hp_mixedChar
  rcases hp_mixedChar.charP_quotient with ⟨I, hI_ne_top, hI_p⟩
  replace hI_zero : CharP (R ⧸ I) 0 := @CharP.ofCharZero _ _ (h I hI_ne_top)
  exact absurd (CharP.eq (R ⧸ I) hI_p hI_zero) (ne_of_gt p_pos)
#align equal_char_zero_to_not_mixed_char EqualCharZero.to_not_mixedCharZero

/--
A ring of characteristic zero has equal characteristic iff it does not
have mixed characteristic for any `p`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce50f18412cf34a2d0040b5e72477abd5ff8b7fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
