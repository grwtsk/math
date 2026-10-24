# normal_of_index_eq_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df26f7ba-930c-6a85-0bbc-edb9c966dad8",
  "kind": "theorem",
  "lexical_name": "normal_of_index_eq_two",
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
  "slug": "normal-of-index-eq-two--97ddbfc5fc1c97d80afdd042",
  "source": {
    "blob": "e765216569829347b80cb529d4d10f3fb4a74a23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 47,
    "path": "GRWTSK/Algebra/GroupTheory/IndexNormal/Variantb690561bcc223976091e6a8b97ae7d75d144c4fc5e92fa34461663b9e947546f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97ddbfc5fc1c97d80afdd0427bf1ed0027c5d01cd27a29c6bb8fd7fe975e3b64",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IndexNormal/Variantb690561bcc223976091e6a8b97ae7d75d144c4fc5e92fa34461663b9e947546f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df26f7ba-930c-6a85-0bbc-edb9c966dad8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_of_index_eq_two (hH : H.index = 2) : H.Normal where
  conj_mem x hxH g := by simp_rw [mul_mem_iff_of_index_two hH, hxH, iff_true, inv_mem_iff]

/-- A subgroup of a finite group whose index is the smallest prime factor is normal.

Note : if `G` is infinite, then `Nat.card G = 0` and `(Nat.card G).minFac = 2` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IndexNormal/Variantb690561bcc223976091e6a8b97ae7d75d144c4fc5e92fa34461663b9e947546f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IndexNormal/Variantb690561bcc223976091e6a8b97ae7d75d144c4fc5e92fa34461663b9e947546f.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e765216569829347b80cb529d4d10f3fb4a74a23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
