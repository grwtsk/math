# UniformSpace.Completion.coe_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f79c853e-62f1-3dc3-890d-31f71835092f",
  "kind": "lemma",
  "lexical_name": "UniformSpace.Completion.coe_eq_zero_iff",
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
  "slug": "uniformspace-completion-coe-eq-zero-iff--4620929048b32925d8451eb8",
  "source": {
    "blob": "dc21e6011b7d7f414778e9ae6d2e9baff885d74e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/GroupCompletion/Variantda6e112defc6037db1b383b2fc820b98b277cf177cc87886abd0ead9f4590ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4620929048b32925d8451eb8fdc25108dff2e3a3297a732066d89d9a48b1d3b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GroupCompletion/Variantda6e112defc6037db1b383b2fc820b98b277cf177cc87886abd0ead9f4590ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f79c853e-62f1-3dc3-890d-31f71835092f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma UniformSpace.Completion.coe_eq_zero_iff [Zero α] [T0Space α] {x : α} :
    (x : Completion α) = 0 ↔ x = 0 :=
  Completion.coe_inj

end Group

namespace UniformSpace.Completion

open UniformSpace

section Zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupCompletion/Variantda6e112defc6037db1b383b2fc820b98b277cf177cc87886abd0ead9f4590ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupCompletion/Variantda6e112defc6037db1b383b2fc820b98b277cf177cc87886abd0ead9f4590ff7.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc21e6011b7d7f414778e9ae6d2e9baff885d74e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
