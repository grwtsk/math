# wilesSemistableModularityChecked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca552442815f2e35954a0287fb56e4f38c3491bd5b8944e4d248388838c5ed64",
  "kind": "def",
  "lexical_name": "wilesSemistableModularityChecked",
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
  "slug": "wilessemistablemodularitychecked--7e1b35c853ce5b734848cd2f",
  "source": {
    "blob": "f1c2f088a65e542e098d212e9c82f28a0efaf71b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 87,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/WilesSurface/Variant48e2df67825d986d87ad103a430e0cab860b9fc9ef9112775cb2e891e190813b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e1b35c853ce5b734848cd2f91f3765aca3b6a235dce1b37b3bca7307b9134fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/WilesSurface/Variant48e2df67825d986d87ad103a430e0cab860b9fc9ef9112775cb2e891e190813b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca552442815f2e35954a0287fb56e4f38c3491bd5b8944e4d248388838c5ed64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wilesSemistableModularityChecked :
    Think.Checked wilesSemistableModularityClaim :=
  FWR.Checked.residue [wilesProofImportResidue]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/WilesSurface/Variant48e2df67825d986d87ad103a430e0cab860b9fc9ef9112775cb2e891e190813b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/WilesSurface/Variant48e2df67825d986d87ad103a430e0cab860b9fc9ef9112775cb2e891e190813b.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1c2f088a65e542e098d212e9c82f28a0efaf71b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
