# atIdxSlow?_eq_match

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a5e0cb5-43ca-0547-8969-75e927ef1284",
  "kind": "theorem",
  "lexical_name": "atIdxSlow?_eq_match",
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
  "slug": "atidxslow-eq-match--0a8c5718ea1f44b1deef162d",
  "source": {
    "blob": "43bd0f8c9ddc77695e850a3ee2302320b4bce326",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variantcb4d2344e610ffb77a9b4b44751a9a500d5038b331f5c3053c9446331e7b9fe9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a8c5718ea1f44b1deef162dbf0844d9c302a0aefc1e656c27b6ea1803bb530b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variantcb4d2344e610ffb77a9b4b44751a9a500d5038b331f5c3053c9446331e7b9fe9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a5e0cb5-43ca-0547-8969-75e927ef1284`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem atIdxSlow?_eq_match [Iterator α Id β] [Productive α Id]
    {n : Nat} {it : Iter (α := α) β} :
    it.atIdxSlow? n =
      (match it.step.val with
      | .yield it' out =>
        match n with
        | 0 => some out
        | n + 1 => it'.atIdxSlow? n
      | .skip it' => it'.atIdxSlow? n
      | .done => none) := by
  induction n, it using Iter.atIdxSlow?.induct_unfolding <;> simp_all

end Std.Iter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variantcb4d2344e610ffb77a9b4b44751a9a500d5038b331f5c3053c9446331e7b9fe9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variantcb4d2344e610ffb77a9b4b44751a9a500d5038b331f5c3053c9446331e7b9fe9.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43bd0f8c9ddc77695e850a3ee2302320b4bce326` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
