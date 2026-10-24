# Set.Finite.isGδ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fe41b7380b60e57fc81c37e699c93d511cd4891",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e32dd38f-804b-8c89-88d3-90e65d061059",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0733f4f4-d17b-1197-ccdc-ea8099ec5f6f",
  "kind": "theorem",
  "lexical_name": "Set.Finite.isGδ",
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
  "slug": "set-finite-isg--b8f690030bf02e2cbcee6f9e",
  "source": {
    "blob": "7fe41b7380b60e57fc81c37e699c93d511cd4891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8f690030bf02e2cbcee6f9ec05f8c96394aaf48bc7af001f8c696dc57f22ce1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0733f4f4-d17b-1197-ccdc-ea8099ec5f6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Set.Finite.isGδ [FirstCountableTopology X] {s : Set X} [T1Space X] (hs : s.Finite) :
    IsGδ s :=
  Finite.induction_on _ hs .empty fun _ _ ↦ .union (.singleton _)


section PerfectlyNormal

/-- A topological space `X` is a *perfectly normal space* provided it is normal and
closed sets are Gδ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fe41b7380b60e57fc81c37e699c93d511cd4891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
