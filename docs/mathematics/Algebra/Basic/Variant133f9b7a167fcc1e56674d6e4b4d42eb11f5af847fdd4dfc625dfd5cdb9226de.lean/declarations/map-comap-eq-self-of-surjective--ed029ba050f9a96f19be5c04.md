# map_comap_eq_self_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "229798e3d702b5f71c2c5ffec776d88d8728cced",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 609,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/133f9b7a167fcc1e56674d6e4b4d42eb11f5af847fdd4dfc625dfd5cdb9226de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60935e0d-4904-e671-db3e-0d587ca081fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5ed0742-5a4e-3359-5605-4385d12df80f",
  "kind": "theorem",
  "lexical_name": "map_comap_eq_self_of_surjective",
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
  "slug": "map-comap-eq-self-of-surjective--ed029ba050f9a96f19be5c04",
  "source": {
    "blob": "229798e3d702b5f71c2c5ffec776d88d8728cced",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 612,
    "line": 609,
    "path": "GRWTSK/Algebra/Basic/Variant133f9b7a167fcc1e56674d6e4b4d42eb11f5af847fdd4dfc625dfd5cdb9226de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed029ba050f9a96f19be5c0475fb8c05b38373d4dad02ae432bdbd564275c1df",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant133f9b7a167fcc1e56674d6e4b4d42eb11f5af847fdd4dfc625dfd5cdb9226de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5ed0742-5a4e-3359-5605-4385d12df80f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 609–612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_comap_eq_self_of_surjective
    {f : K →+* L} (hf : Function.Surjective f) (s : Subfield L) : (s.comap f).map f = s :=
  SetLike.coe_injective (Set.image_preimage_eq _ hf)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant133f9b7a167fcc1e56674d6e4b4d42eb11f5af847fdd4dfc625dfd5cdb9226de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant133f9b7a167fcc1e56674d6e4b4d42eb11f5af847fdd4dfc625dfd5cdb9226de.lean#L609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `229798e3d702b5f71c2c5ffec776d88d8728cced` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
