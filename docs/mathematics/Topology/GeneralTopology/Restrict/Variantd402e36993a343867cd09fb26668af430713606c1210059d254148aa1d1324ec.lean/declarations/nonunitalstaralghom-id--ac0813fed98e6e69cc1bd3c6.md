# nonUnitalStarAlgHom_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2c64f4e34fc652470fac9ca6b9e468838066640",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee5c9ac4-3fb4-6bd0-4001-f30e729c2b17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10cb2bfb-7553-3d2a-34a5-3c4533d1380f",
  "kind": "lemma",
  "lexical_name": "nonUnitalStarAlgHom_id",
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
  "slug": "nonunitalstaralghom-id--ac0813fed98e6e69cc1bd3c6",
  "source": {
    "blob": "e2c64f4e34fc652470fac9ca6b9e468838066640",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 214,
    "path": "GRWTSK/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac0813fed98e6e69cc1bd3c62b706bc73f797ea979b56847db00676cac1343fc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10cb2bfb-7553-3d2a-34a5-3c4533d1380f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonUnitalStarAlgHom_id {a : A} {φ : C(σₙ S a, S)₀ →⋆ₙₐ[S] A} {f : C(S, R)}
    (h : QuasispectrumRestricts a f) (h_id : φ (.id rfl) = a) :
    h.nonUnitalStarAlgHom φ (.id rfl) = a := by
  simp only [QuasispectrumRestricts.nonUnitalStarAlgHom_apply]
  convert h_id
  ext x
  exact h.rightInvOn x.2

variable [TopologicalSpace A] [NonUnitalContinuousFunctionalCalculus S A q]
variable [CompleteSpace R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2c64f4e34fc652470fac9ca6b9e468838066640` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
