# isClosed_imp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9a9ff8f-b8bd-7ff4-0dd1-62ad210ad93c",
  "kind": "theorem",
  "lexical_name": "isClosed_imp",
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
  "slug": "isclosed-imp--f68e2616bef8f930543a4695",
  "source": {
    "blob": "d1efcfe5d26a6024d159b97113bada20fc1d86fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 189,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f68e2616bef8f930543a469544f3e2837da9311516cd8b422c801fa12611869e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9a9ff8f-b8bd-7ff4-0dd1-62ad210ad93c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_imp {p q : X → Prop} (hp : IsOpen { x | p x }) (hq : IsClosed { x | q x }) :
    IsClosed { x | p x → q x } := by
  simpa only [imp_iff_not_or] using hp.isClosed_compl.union hq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1efcfe5d26a6024d159b97113bada20fc1d86fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
