# finIdxOf?_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b8e268d-0fb5-23fb-3d92-9b4b5ee785db",
  "kind": "theorem",
  "lexical_name": "finIdxOf?_cons",
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
  "slug": "finidxof-cons--f9e73eed8ccdea03be1535e9",
  "source": {
    "blob": "77c03aa5a3f59c3fe67e5c593c97f676c21f5320",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1224,
    "line": 1220,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9e73eed8ccdea03be1535e92ab5dfb6d839d181ecb88e8130ed729d12ee07d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b8e268d-0fb5-23fb-3d92-9b4b5ee785db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1220–1224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[grind =] theorem finIdxOf?_cons [BEq α] {a : α} {xs : List α} :
    (a :: xs).finIdxOf? b =
      if a == b then some ⟨0, by simp⟩ else (xs.finIdxOf? b).map (·.succ) := by
  simp [finIdxOf?, findFinIdx?_cons]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean#L1220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c03aa5a3f59c3fe67e5c593c97f676c21f5320` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
