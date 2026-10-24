# toFinset_vsub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c9f5c99-08b5-4528-9d8f-621767419e40",
  "kind": "theorem",
  "lexical_name": "toFinset_vsub",
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
  "slug": "tofinset-vsub--614c38f6db6cfd33fba00447",
  "source": {
    "blob": "80ce92a57b7109231d1e8c78974b3394b343555e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 424,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Scalar/Variant3c4ea4729f28fb241636b4a04656b3219c0347302a265fbcb519d5d250220f7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:614c38f6db6cfd33fba004472cba795fc3366cb8c4dcf1b9d3691a5658cf029a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Scalar/Variant3c4ea4729f28fb241636b4a04656b3219c0347302a265fbcb519d5d250220f7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c9f5c99-08b5-4528-9d8f-621767419e40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toFinset_vsub (s t : Set β) [Fintype s] [Fintype t] [Fintype ↑(s -ᵥ t)] :
    (s -ᵥ t : Set α).toFinset = s.toFinset -ᵥ t.toFinset :=
  toFinset_image2 _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Scalar/Variant3c4ea4729f28fb241636b4a04656b3219c0347302a265fbcb519d5d250220f7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Scalar/Variant3c4ea4729f28fb241636b4a04656b3219c0347302a265fbcb519d5d250220f7d.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80ce92a57b7109231d1e8c78974b3394b343555e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
