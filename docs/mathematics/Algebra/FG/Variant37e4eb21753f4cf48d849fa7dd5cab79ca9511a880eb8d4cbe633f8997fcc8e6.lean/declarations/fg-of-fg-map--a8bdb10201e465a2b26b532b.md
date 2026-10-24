# fg_of_fg_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91b487fb70fe127b654bd8812640545d6c7e0af0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37e4eb21753f4cf48d849fa7dd5cab79ca9511a880eb8d4cbe633f8997fcc8e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ccc74cf-3c9e-c8d1-0669-e7315d4a6fcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e083bcea-2800-f4fb-1257-3c4311e2c343",
  "kind": "theorem",
  "lexical_name": "fg_of_fg_map",
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
  "slug": "fg-of-fg-map--a8bdb10201e465a2b26b532b",
  "source": {
    "blob": "91b487fb70fe127b654bd8812640545d6c7e0af0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 140,
    "path": "GRWTSK/Algebra/FG/Variant37e4eb21753f4cf48d849fa7dd5cab79ca9511a880eb8d4cbe633f8997fcc8e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8bdb10201e465a2b26b532baad8dfb4791c67b9f6f18be623505e7216f966ed",
  "verification": {
    "reference": "docs/verification/Algebra/FG/Variant37e4eb21753f4cf48d849fa7dd5cab79ca9511a880eb8d4cbe633f8997fcc8e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e083bcea-2800-f4fb-1257-3c4311e2c343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fg_of_fg_map (S : Subalgebra R A) (f : A →ₐ[R] B) (hf : Function.Injective f)
    (hs : (S.map f).FG) : S.FG :=
  let ⟨s, hs⟩ := hs
  ⟨s.preimage f fun _ _ _ _ h ↦ hf h,
    map_injective hf <| by
      rw [← Algebra.adjoin_image, Finset.coe_preimage, Set.image_preimage_eq_of_subset, hs]
      rw [← AlgHom.coe_range, ← Algebra.adjoin_le_iff, hs, ← Algebra.map_top]
      exact map_mono le_top⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FG/Variant37e4eb21753f4cf48d849fa7dd5cab79ca9511a880eb8d4cbe633f8997fcc8e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FG/Variant37e4eb21753f4cf48d849fa7dd5cab79ca9511a880eb8d4cbe633f8997fcc8e6.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91b487fb70fe127b654bd8812640545d6c7e0af0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
