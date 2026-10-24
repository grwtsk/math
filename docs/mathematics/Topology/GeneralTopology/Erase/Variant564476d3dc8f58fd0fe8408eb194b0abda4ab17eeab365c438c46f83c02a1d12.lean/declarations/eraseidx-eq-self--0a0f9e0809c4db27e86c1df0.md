# eraseIdx_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5174846a-6bf6-fbce-2ea8-f159c6324c44",
  "kind": "theorem",
  "lexical_name": "eraseIdx_eq_self",
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
  "slug": "eraseidx-eq-self--0a0f9e0809c4db27e86c1df0",
  "source": {
    "blob": "58091872e798159d837f63e09d08455b2f3348c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 629,
    "line": 625,
    "path": "GRWTSK/Topology/GeneralTopology/Erase/Variant564476d3dc8f58fd0fe8408eb194b0abda4ab17eeab365c438c46f83c02a1d12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a0f9e0809c4db27e86c1df083bd931a00032511b66d6fc7d8f13a4ea127804d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Erase/Variant564476d3dc8f58fd0fe8408eb194b0abda4ab17eeab365c438c46f83c02a1d12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5174846a-6bf6-fbce-2ea8-f159c6324c44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 625–629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eraseIdx_eq_self : ∀ {l : List α} {k : Nat}, eraseIdx l k = l ↔ length l ≤ k
  | [], _ => by simp
  | a::l, 0 => by simp [(cons_ne_self _ _).symm]
  | a::l, k + 1 => by simp [eraseIdx_eq_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Erase/Variant564476d3dc8f58fd0fe8408eb194b0abda4ab17eeab365c438c46f83c02a1d12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Erase/Variant564476d3dc8f58fd0fe8408eb194b0abda4ab17eeab365c438c46f83c02a1d12.lean#L625).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58091872e798159d837f63e09d08455b2f3348c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
