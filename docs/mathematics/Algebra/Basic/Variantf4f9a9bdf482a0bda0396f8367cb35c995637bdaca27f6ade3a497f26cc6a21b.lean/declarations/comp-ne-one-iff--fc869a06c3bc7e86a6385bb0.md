# comp_ne_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:130be8a0-c2cd-0d45-f9cd-f1dca8127c9b",
  "kind": "lemma",
  "lexical_name": "comp_ne_one_iff",
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
  "slug": "comp-ne-one-iff--fc869a06c3bc7e86a6385bb0",
  "source": {
    "blob": "9228e7eb724e682c7f1224347e434b11d36bb55f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 313,
    "path": "GRWTSK/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc869a06c3bc7e86a6385bb06877e68b779e31c0aa2a7c788735f03664459454",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:130be8a0-c2cd-0d45-f9cd-f1dca8127c9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_ne_one_iff [One β] [One γ] (f : α → β) {g : β → γ} (hg : Injective g) (hg0 : g 1 = 1) :
    g ∘ f ≠ 1 ↔ f ≠ 1 :=
  (comp_eq_one_iff f hg hg0).ne

end Function

/-- If the one function is surjective, the codomain is trivial. -/
@[to_additive "If the zero function is surjective, the codomain is trivial."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9228e7eb724e682c7f1224347e434b11d36bb55f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
