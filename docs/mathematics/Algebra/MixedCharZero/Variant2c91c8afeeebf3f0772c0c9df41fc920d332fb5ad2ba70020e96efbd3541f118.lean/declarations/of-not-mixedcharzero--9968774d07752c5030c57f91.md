# of_not_mixedCharZero

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
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f6e8a54-e843-e779-a4f5-2077a8467231",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:505789e8-fd3e-08aa-0a81-f86e3e2f3d49",
  "kind": "theorem",
  "lexical_name": "of_not_mixedCharZero",
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
  "slug": "of-not-mixedcharzero--9968774d07752c5030c57f91",
  "source": {
    "blob": "ce50f18412cf34a2d0040b5e72477abd5ff8b7fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 251,
    "path": "GRWTSK/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9968774d07752c5030c57f91b3ec4422e88e64337fde55134082c24c4feefb6a",
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

Occurrence: `result:505789e8-fd3e-08aa-0a81-f86e3e2f3d49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_not_mixedCharZero [CharZero R] (h : ∀ p > 0, ¬MixedCharZero R p) :
    ∀ I : Ideal R, I ≠ ⊤ → CharZero (R ⧸ I) := by
  intro I hI_ne_top
  suffices h_charP : CharP (R ⧸ I) 0
  · apply CharP.charP_to_charZero
  cases CharP.exists (R ⧸ I) with
  | intro p hp =>
    cases p with
    | zero => exact hp
    | succ p =>
      have h_mixed : MixedCharZero R p.succ := ⟨⟨I, ⟨hI_ne_top, hp⟩⟩⟩
      exact absurd h_mixed (h p.succ p.succ_pos)
#align not_mixed_char_to_equal_char_zero EqualCharZero.of_not_mixedCharZero

/-- Equal characteristic implies not mixed characteristic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce50f18412cf34a2d0040b5e72477abd5ff8b7fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
