# max_mul_mul_le_max_mul_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3a3687b-5b61-e116-d9f1-5f5199659e17",
  "kind": "theorem",
  "lexical_name": "max_mul_mul_le_max_mul_max",
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
  "slug": "max-mul-mul-le-max-mul-max--ce7f4b1b68c7efec6c16dc39",
  "source": {
    "blob": "34d6b032e2a00c89628e46019a0a8ce6c7a7f5c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1251,
    "line": 1242,
    "path": "GRWTSK/Algebra/Defs/Variant475b296dc5ca281f422c14f6e94e70a1e01733b55a3a057b355f94ce9368283f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce7f4b1b68c7efec6c16dc39de9b2fc37677a98c1e633107c3543e972d58e9f2",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant475b296dc5ca281f422c14f6e94e70a1e01733b55a3a057b355f94ce9368283f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3a3687b-5b61-e116-d9f1-5f5199659e17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1242–1251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem max_mul_mul_le_max_mul_max (b c : α) (ha : 0 ≤ a) (hd : 0 ≤ d) :
    max (a * b) (d * c) ≤ max a c * max d b :=
  have ba : b * a ≤ max d b * max c a :=
    mul_le_mul (le_max_right d b) (le_max_right c a) ha (le_trans hd (le_max_left d b))
  have cd : c * d ≤ max a c * max b d :=
    mul_le_mul (le_max_right a c) (le_max_right b d) hd (le_trans ha (le_max_left a c))
  max_le (by simpa [mul_comm, max_comm] using ba) (by simpa [mul_comm, max_comm] using cd)
#align max_mul_mul_le_max_mul_max max_mul_mul_le_max_mul_max

end LinearOrderedCommRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant475b296dc5ca281f422c14f6e94e70a1e01733b55a3a057b355f94ce9368283f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant475b296dc5ca281f422c14f6e94e70a1e01733b55a3a057b355f94ce9368283f.lean#L1242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34d6b032e2a00c89628e46019a0a8ce6c7a7f5c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
