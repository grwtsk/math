# DeepIntegrationCertificate.sound_all_scales

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4cc3c75df347226ab271858ee51f58cdf1f82969",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e9c17c8baf8f36ebf7810b017031dff6442c7177033b96a33541c59d8d06433.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56a0ccaa-33e4-74b0-b4d9-1bef9c9bcdb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16796410-7221-f87e-7d3f-d8284896c70e",
  "kind": "theorem",
  "lexical_name": "DeepIntegrationCertificate.sound_all_scales",
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
  "slug": "deepintegrationcertificate-sound-all-scales--07162a63f66705131db5f1e9",
  "source": {
    "blob": "4cc3c75df347226ab271858ee51f58cdf1f82969",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 36,
    "path": "GRWTSK/Topology/GeneralTopology/Integration/Variant6e9c17c8baf8f36ebf7810b017031dff6442c7177033b96a33541c59d8d06433.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07162a63f66705131db5f1e9da6e115f0f1a47babb3f945cec17cee4021d5f5d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Integration/Variant6e9c17c8baf8f36ebf7810b017031dff6442c7177033b96a33541c59d8d06433.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16796410-7221-f87e-7d3f-d8284896c70e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DeepIntegrationCertificate.sound_all_scales
    {C : Think.Knowledge.Sheaf.FinCat} {V : C.Obj}
    {F : Think.Knowledge.Sheaf.Presheaf C}
    {c : Think.Knowledge.Sheaf.Cover C V}
    {s : (i : c.I) → F.Sec (c.U i)}
    (cert : DeepIntegrationCertificate F c s) :
    ∀ n : Nat, ScaledGluing F c s n :=
by
  exact gluing_scales F c s cert.gluing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Integration/Variant6e9c17c8baf8f36ebf7810b017031dff6442c7177033b96a33541c59d8d06433.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Integration/Variant6e9c17c8baf8f36ebf7810b017031dff6442c7177033b96a33541c59d8d06433.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cc3c75df347226ab271858ee51f58cdf1f82969` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
