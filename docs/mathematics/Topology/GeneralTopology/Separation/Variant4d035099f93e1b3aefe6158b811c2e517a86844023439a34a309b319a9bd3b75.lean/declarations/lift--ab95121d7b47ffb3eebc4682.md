# lift'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a4ff6b402f9ff2530a43ca24b72a4952197280abeb6c2bf4f0f52f586dbbf14",
  "kind": "def",
  "lexical_name": "lift'",
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
  "slug": "lift--ab95121d7b47ffb3eebc4682",
  "source": {
    "blob": "1df82c42119be01e922d187d81992ba3065ec3ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 254,
    "path": "GRWTSK/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab95121d7b47ffb3eebc468206449fba9468a48d77eb503eb7da5b0c41e615da",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a4ff6b402f9ff2530a43ca24b72a4952197280abeb6c2bf4f0f52f586dbbf14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lift' [T0Space β] (f : α → β) : SeparationQuotient α → β :=
  if hc : UniformContinuous f then lift f fun _ _ h => (h.map hc.continuous).eq
  else fun x => f (Nonempty.some ⟨x.out⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1df82c42119be01e922d187d81992ba3065ec3ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
