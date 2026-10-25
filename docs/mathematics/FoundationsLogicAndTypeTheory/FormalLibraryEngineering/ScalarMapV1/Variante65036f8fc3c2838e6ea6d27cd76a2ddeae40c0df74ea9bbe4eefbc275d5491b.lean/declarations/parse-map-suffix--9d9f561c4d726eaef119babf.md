# parse_map_suffix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a895a31394777a2fdd9496b3790509f30f2d164",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Fixtures/records/evidence/c2-inverse/ScalarMap-v1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8623bce-2f5f-2d99-124a-402befb260ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2bedaab-d715-2a3f-03f2-2c2e95058fb0",
  "kind": "theorem",
  "lexical_name": "parse_map_suffix",
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
  "slug": "parse-map-suffix--9d9f561c4d726eaef119babf",
  "source": {
    "blob": "7a895a31394777a2fdd9496b3790509f30f2d164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarMapV1/Variante65036f8fc3c2838e6ea6d27cd76a2ddeae40c0df74ea9bbe4eefbc275d5491b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d9f561c4d726eaef119babf94a378996d8a32a4fa7a2033c8aa1cd44a2f30bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarMapV1/Variante65036f8fc3c2838e6ea6d27cd76a2ddeae40c0df74ea9bbe4eefbc275d5491b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2bedaab-d715-2a3f-03f2-2c2e95058fb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parse_map_suffix
    (fuel : Nat) (ps : List (Bytes × Value)) (s : Bytes)
    (hlen : ps.length ≤ 64) (hkey : ∀ kv ∈ ps, kv.1.length ≤ 16384)
    (hchild : ∀ kv ∈ ps, ∀ t,
      parseValue (fuel+1) (emit kv.2 ++ t) = some (kv.2,t)) :
    parseValue (fuel+2) (emit (.map ps) ++ s) = some (.map ps,s) := by
  have hk : ∀ kv ∈ ps, ∀ t,
      parseValue (fuel+1) (emit (.text kv.1) ++ t) = some (.text kv.1,t) := by
    intro kv hkv t
    exact parse_text_suffix fuel kv.1 t (hkey kv hkv)
  have hp := readPairs_emit_suffix (parseValue (fuel+1)) ps s hk hchild
  simp only [emit] at hp ⊢
  simp only [List.cons_append, List.append_assoc]
  simp [parseValue, readNat_digits _ _ ':' (by decide), Nat.not_lt.mpr hlen, hp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarMapV1/Variante65036f8fc3c2838e6ea6d27cd76a2ddeae40c0df74ea9bbe4eefbc275d5491b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarMapV1/Variante65036f8fc3c2838e6ea6d27cd76a2ddeae40c0df74ea9bbe4eefbc275d5491b.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a895a31394777a2fdd9496b3790509f30f2d164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
