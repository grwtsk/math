# continuous_iInf_dom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5bb7f454ae5677054c1bf642953a47e5a1a53560",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 704,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ece6355253475a79e358e301c1ed01df1f7642133e225a3fffe4bce349c1527.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:476cac2d-229b-c967-15dc-e27c77ca59ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2afa89c-3b94-dc0b-8c69-26e8165d517e",
  "kind": "theorem",
  "lexical_name": "continuous_iInf_dom",
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
  "slug": "continuous-iinf-dom--77245ef5c24c395a3240336a",
  "source": {
    "blob": "5bb7f454ae5677054c1bf642953a47e5a1a53560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 707,
    "line": 704,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variant6ece6355253475a79e358e301c1ed01df1f7642133e225a3fffe4bce349c1527.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77245ef5c24c395a3240336a635825824d099fa21ed28514488639ba25e27661",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variant6ece6355253475a79e358e301c1ed01df1f7642133e225a3fffe4bce349c1527.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2afa89c-3b94-dc0b-8c69-26e8165d517e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 704–707.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_iInf_dom {t₁ : ι → TopologicalSpace α} {t₂ : TopologicalSpace β} {i : ι} :
    Continuous[t₁ i, t₂] f → Continuous[iInf t₁, t₂] f :=
  continuous_le_dom <| iInf_le _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variant6ece6355253475a79e358e301c1ed01df1f7642133e225a3fffe4bce349c1527.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variant6ece6355253475a79e358e301c1ed01df1f7642133e225a3fffe4bce349c1527.lean#L704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bb7f454ae5677054c1bf642953a47e5a1a53560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
