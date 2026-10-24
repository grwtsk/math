# isHomeomorph_toPiNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9037e11c4d4eeb6bcd61b008be2f6f95426d2181",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1076,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a11a2e7-e519-517d-c990-b1d1a10ea817",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00e74e74-8013-00cd-14f6-216227769f8e",
  "kind": "lemma",
  "lexical_name": "isHomeomorph_toPiNat",
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
  "slug": "ishomeomorph-topinat--c948ad675dfa7e26570d8717",
  "source": {
    "blob": "9037e11c4d4eeb6bcd61b008be2f6f95426d2181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1086,
    "line": 1076,
    "path": "GRWTSK/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c948ad675dfa7e26570d87178701a33b536f420b07e274fb8b3890b4912c9b20",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00e74e74-8013-00cd-14f6-216227769f8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1076–1086.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isHomeomorph_toPiNat (continuous_f : ∀ i, Continuous (f i))
    (separating_f : Pairwise fun x y ↦ ∃ i, f i x ≠ f i y) :
    IsHomeomorph (toPiNat : X → PiNatEmbed X Y f) := by
  let := emetricSpace separating_f
  rw [isHomeomorph_iff_continuous_bijective]
  exact ⟨continuous_toPiNat continuous_f, (toPiNatEquiv X Y f).bijective⟩

variable (X Y f) in
/-- Homeomorphism between `X` and its embedding into `∀ i, Y i` induced by a separating family of
continuous functions `f i : X → Y i`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean#L1076).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9037e11c4d4eeb6bcd61b008be2f6f95426d2181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
