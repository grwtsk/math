# dropWhile_filterMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1c857db7b83e23eff56fe00f2feeec40d575595",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16c0418c733f7ef8f331cd6bf6848ca343bda50766494292e80c438755942ac5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:500b7d74-500a-9d1f-2410-7f50548a133b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04186f39-aec0-10c0-8ab9-d8c70bfd9198",
  "kind": "theorem",
  "lexical_name": "dropWhile_filterMap",
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
  "slug": "dropwhile-filtermap--4105e534eef669cf5e577aff",
  "source": {
    "blob": "f1c857db7b83e23eff56fe00f2feeec40d575595",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 365,
    "path": "GRWTSK/Topology/GeneralTopology/TakeDrop/Variant16c0418c733f7ef8f331cd6bf6848ca343bda50766494292e80c438755942ac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4105e534eef669cf5e577affe540183ca7426b81a53de134242bcd199f1ef771",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TakeDrop/Variant16c0418c733f7ef8f331cd6bf6848ca343bda50766494292e80c438755942ac5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04186f39-aec0-10c0-8ab9-d8c70bfd9198`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dropWhile_filterMap {f : α → Option β} {p : β → Bool} {l : List α} :
    (l.filterMap f).dropWhile p = (l.dropWhile fun a => (f a).all p).filterMap f := by
  induction l with
  | nil => rfl
  | cons x xs ih =>
    simp only [filterMap_cons]
    split <;> rename_i h
    · simp only [dropWhile_cons, h]
      split <;> simp_all
    · simp [dropWhile_cons, h, ih]
      split <;> simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TakeDrop/Variant16c0418c733f7ef8f331cd6bf6848ca343bda50766494292e80c438755942ac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TakeDrop/Variant16c0418c733f7ef8f331cd6bf6848ca343bda50766494292e80c438755942ac5.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1c857db7b83e23eff56fe00f2feeec40d575595` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
