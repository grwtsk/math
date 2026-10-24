# IsLocalMin.bicomp_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5506530e-f60d-c358-8be3-f41f98c94c4a",
  "kind": "theorem",
  "lexical_name": "IsLocalMin.bicomp_mono",
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
  "slug": "islocalmin-bicomp-mono--0147bed18a7d95ff745fa334",
  "source": {
    "blob": "ff8cad5ca9897f8d1087a143393dd6afdafb4951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 244,
    "path": "GRWTSK/Topology/GeneralTopology/LocalExtr/Variant0b64e73e9ac4652d506f58100712d513072b256e6014c510cd3b7fb192b15af4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0147bed18a7d95ff745fa33404d241808d991b43f17253505077b9286b352d63",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalExtr/Variant0b64e73e9ac4652d506f58100712d513072b256e6014c510cd3b7fb192b15af4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5506530e-f60d-c358-8be3-f41f98c94c4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem IsLocalMin.bicomp_mono [Preorder δ] {op : β → γ → δ}
    (hop : ((· ≤ ·) ⇒ (· ≤ ·) ⇒ (· ≤ ·)) op op) (hf : IsLocalMin f a) {g : α → γ}
    (hg : IsLocalMin g a) : IsLocalMin (fun x => op (f x) (g x)) a :=
  hf.bicomp_mono hop hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalExtr/Variant0b64e73e9ac4652d506f58100712d513072b256e6014c510cd3b7fb192b15af4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalExtr/Variant0b64e73e9ac4652d506f58100712d513072b256e6014c510cd3b7fb192b15af4.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff8cad5ca9897f8d1087a143393dd6afdafb4951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
