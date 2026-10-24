# mul_card_image_le_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:182cc50e-113a-2f7a-ecc7-efe6501da76a",
  "kind": "theorem",
  "lexical_name": "mul_card_image_le_card",
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
  "slug": "mul-card-image-le-card--42a9e488b5a7587835702b72",
  "source": {
    "blob": "2bc3e3149f5ca39613936ebd060708d589e28c51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 421,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant728b8f36b2e634b939216c2a1738a499946c0e7ef1023efc362d8d0ab10e7e4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42a9e488b5a7587835702b72a78a3ecd0fe4d62c42b0289ddf78ff59427dea8f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant728b8f36b2e634b939216c2a1738a499946c0e7ef1023efc362d8d0ab10e7e4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:182cc50e-113a-2f7a-ecc7-efe6501da76a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_card_image_le_card {f : α → β} (s : Finset α) (n : ℕ)
    (hn : ∀ b ∈ s.image f, n ≤ #{a ∈ s | f a = b}) : n * #(s.image f) ≤ #s :=
  mul_card_image_le_card_of_maps_to (fun _ ↦ mem_image_of_mem _) n hn

end Pigeonhole

section DoubleCounting

variable [DecidableEq α] {s : Finset α} {B : Finset (Finset α)} {n : ℕ}

/-- If every element belongs to at most `n` Finsets, then the sum of their sizes is at most `n`
times how many they are. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant728b8f36b2e634b939216c2a1738a499946c0e7ef1023efc362d8d0ab10e7e4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant728b8f36b2e634b939216c2a1738a499946c0e7ef1023efc362d8d0ab10e7e4d.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bc3e3149f5ca39613936ebd060708d589e28c51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
