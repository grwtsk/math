# Monotone.limsup_nhdsGT_eq_iInf₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:747c43f5-b1c3-3d76-7d54-1355ce12173b",
  "kind": "lemma",
  "lexical_name": "Monotone.limsup_nhdsGT_eq_iInf₂",
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
  "slug": "monotone-limsup-nhdsgt-eq-iinf--bc7f1eec3d8fce911169c9ab",
  "source": {
    "blob": "5da351eb41598dd43a4bae3aa9e4342b4f16bf27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 662,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc7f1eec3d8fce911169c9ab356895ca4145b22314798a459db198bbc7a10c52",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:747c43f5-b1c3-3d76-7d54-1355ce12173b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 662–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Monotone.limsup_nhdsGT_eq_iInf₂ [NoMaxOrder α] (hf : Monotone f) (a : α) :
    (𝓝[>] a).limsup f = ⨅ r > a, f r :=
  hf.limsup_nhdsGT_eq_iInf₂_of_exists_gt a (exists_gt a)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean#L662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5da351eb41598dd43a4bae3aa9e4342b4f16bf27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
