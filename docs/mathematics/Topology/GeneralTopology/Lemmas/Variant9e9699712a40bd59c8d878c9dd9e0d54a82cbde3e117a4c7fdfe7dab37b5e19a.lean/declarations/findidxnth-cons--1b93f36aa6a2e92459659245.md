# findIdxNth_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c4ed96a-5328-a3c7-1dbd-aa1611d5b85c",
  "kind": "theorem",
  "lexical_name": "findIdxNth_cons",
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
  "slug": "findidxnth-cons--1b93f36aa6a2e92459659245",
  "source": {
    "blob": "6e76f03e72fb833bd030093498832393e7816fed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 641,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant9e9699712a40bd59c8d878c9dd9e0d54a82cbde3e117a4c7fdfe7dab37b5e19a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b93f36aa6a2e92459659245e6e9468ffc12f183c51fd68f3d7f8bb17163ff43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant9e9699712a40bd59c8d878c9dd9e0d54a82cbde3e117a4c7fdfe7dab37b5e19a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c4ed96a-5328-a3c7-1dbd-aa1611d5b85c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem findIdxNth_cons {a : α} :
    (a :: xs).findIdxNth p n =
    if n = 0 then if p a then 0 else xs.findIdxNth p 0 + 1
    else if p a then xs.findIdxNth p (n - 1) + 1
    else xs.findIdxNth p n + 1 := by
  have H : ∀ n s, findIdxNth.go (p : α → Bool) xs n s = (xs : List α).findIdxNth p n + s := by
    induction xs <;> grind [findIdxNth, findIdxNth.go, cases Nat]
  cases n <;> grind [findIdxNth, findIdxNth.go]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant9e9699712a40bd59c8d878c9dd9e0d54a82cbde3e117a4c7fdfe7dab37b5e19a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant9e9699712a40bd59c8d878c9dd9e0d54a82cbde3e117a4c7fdfe7dab37b5e19a.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e76f03e72fb833bd030093498832393e7816fed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
