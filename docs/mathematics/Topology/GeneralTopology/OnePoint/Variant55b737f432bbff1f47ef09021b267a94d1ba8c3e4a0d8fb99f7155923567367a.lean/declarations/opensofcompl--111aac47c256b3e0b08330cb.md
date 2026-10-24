# opensOfCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b88969a201684cdee22b2cd02246e9a5a8aa74b73c7def310b8630a19998aefe",
  "kind": "def",
  "lexical_name": "opensOfCompl",
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
  "slug": "opensofcompl--111aac47c256b3e0b08330cb",
  "source": {
    "blob": "8df517c25fb971cc4aa696a2effd764201a721ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/OnePoint/Variant55b737f432bbff1f47ef09021b267a94d1ba8c3e4a0d8fb99f7155923567367a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:111aac47c256b3e0b08330cb0f53d91403e59d41548dbf6212f17c41fac91862",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OnePoint/Variant55b737f432bbff1f47ef09021b267a94d1ba8c3e4a0d8fb99f7155923567367a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b88969a201684cdee22b2cd02246e9a5a8aa74b73c7def310b8630a19998aefe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def opensOfCompl (s : Set X) (h₁ : IsClosed s) (h₂ : IsCompact s) :
    TopologicalSpace.Opens (OnePoint X) :=
  ⟨((↑) '' s)ᶜ, isOpen_compl_image_coe.2 ⟨h₁, h₂⟩⟩
#align alexandroff.opens_of_compl OnePoint.opensOfCompl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OnePoint/Variant55b737f432bbff1f47ef09021b267a94d1ba8c3e4a0d8fb99f7155923567367a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OnePoint/Variant55b737f432bbff1f47ef09021b267a94d1ba8c3e4a0d8fb99f7155923567367a.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df517c25fb971cc4aa696a2effd764201a721ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
