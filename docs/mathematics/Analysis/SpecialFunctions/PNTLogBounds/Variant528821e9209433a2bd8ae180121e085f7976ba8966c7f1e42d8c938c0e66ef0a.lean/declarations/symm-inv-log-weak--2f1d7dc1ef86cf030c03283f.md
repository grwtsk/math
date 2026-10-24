# symm_inv_log_weak

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94ca2044ac940dc6b5ffdb8bfbd8e84b019840d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c69931d4-f85d-4b68-fb93-7ca4c3b20e76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cb89315-9475-0d2c-6853-fa4831fffdeb",
  "kind": "theorem",
  "lexical_name": "symm_inv_log_weak",
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
  "slug": "symm-inv-log-weak--2f1d7dc1ef86cf030c03283f",
  "source": {
    "blob": "94ca2044ac940dc6b5ffdb8bfbd8e84b019840d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 251,
    "path": "GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f1d7dc1ef86cf030c03283f7c14c45d6c6111882e780aab8bdd7d93d91c142f",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cb89315-9475-0d2c-6853-fa4831fffdeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_inv_log_weak (t : ℝ) (ht : 0 < t) (ht' : t ≤ 1/2) :
    |1 / log (1 + t) + 1 / log (1 - t)| ≤ 2 := by
  by_cases! h : t < 1/2
  · have heq : 1 / log (1 + t) + 1 / log (1 - t) = symmetricLogComb t := rfl
    rw [heq]
    exact symmetricLogComb_abs_le_two t ht h
  · have ht_eq : t = 1/2 := le_antisymm ht' h
    subst ht_eq
    have h1 : (0:ℝ) < 1/2 := by norm_num
    have h2 : (1:ℝ)/2 < 1 := by norm_num
    have hpos := symmetricLogComb_pos (1/2) h1 h2
    have hle := symmetricLogComb_le_two (1/2) h1 h2
    have heq : 1 / log (1 + 1/2) + 1 / log (1 - 1/2) = symmetricLogComb (1/2) := rfl
    rw [heq, abs_of_pos hpos]
    exact hle
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94ca2044ac940dc6b5ffdb8bfbd8e84b019840d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
