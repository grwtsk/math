# IsClosed.isClosed_image_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02b7ea6e540e2392f3c4e13f1fbf60bffced093e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af258ddc-2f04-b397-b3a6-d4f0f9e6c78a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bdc2d20-74cc-f707-e5ac-996b76e8f462",
  "kind": "lemma",
  "lexical_name": "IsClosed.isClosed_image_eval",
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
  "slug": "isclosed-isclosed-image-eval--91114ec4973915c3cc699135",
  "source": {
    "blob": "02b7ea6e540e2392f3c4e13f1fbf60bffced093e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91114ec4973915c3cc699135e1cfd19712afd5e0b4fea9df77ae03fd7bdb13d8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bdc2d20-74cc-f707-e5ac-996b76e8f462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsClosed.isClosed_image_eval (i : ι)
    (hs_compact : IsCompact s) (hs_closed : IsClosed s) :
    IsClosed ((fun x ↦ x i) '' s) := by
  suffices IsClosed (Set.restrict {i} '' s) by
    have : Homeomorph.piUnique _ ∘ Set.restrict {i} = fun (x : Π j, α j) ↦ x i := rfl
    rwa [← this, image_comp, Homeomorph.isClosed_image (Homeomorph.piUnique _)]
  exact hs_compact.isClosed_image_restrict {i} hs_closed

end IsClosed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02b7ea6e540e2392f3c4e13f1fbf60bffced093e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
