# num_div'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9fbd322f65c4f3cd91a3f97e0cf4d95605f5e20b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 897,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eae3abf1c43a4123891fc0b204e16b2bfe41d0f3374bbd3a8b71f180a6321901.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6613ae7a-576d-20d3-6e43-26a8bc5d4797",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc11c32f-ae45-a297-9120-ee16c39a71a0",
  "kind": "theorem",
  "lexical_name": "num_div'",
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
  "slug": "num-div--48605db1d85db0a2ea88feb3",
  "source": {
    "blob": "9fbd322f65c4f3cd91a3f97e0cf4d95605f5e20b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 902,
    "line": 897,
    "path": "GRWTSK/Algebra/Basic/Varianteae3abf1c43a4123891fc0b204e16b2bfe41d0f3374bbd3a8b71f180a6321901.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48605db1d85db0a2ea88feb32773c5cb21a892aebb58137aa404bdbe7646e1b2",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianteae3abf1c43a4123891fc0b204e16b2bfe41d0f3374bbd3a8b71f180a6321901.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc11c32f-ae45-a297-9120-ee16c39a71a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 897–902.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem num_div' (p : K[X]) {q : K[X]} (hq : q ≠ 0) :
    num (algebraMap _ _ p / algebraMap _ _ q) =
      Polynomial.C (q / gcd p q).leadingCoeff⁻¹ * (p / gcd p q) := by
  rw [num, numDenom_div _ hq]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianteae3abf1c43a4123891fc0b204e16b2bfe41d0f3374bbd3a8b71f180a6321901.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianteae3abf1c43a4123891fc0b204e16b2bfe41d0f3374bbd3a8b71f180a6321901.lean#L897).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fbd322f65c4f3cd91a3f97e0cf4d95605f5e20b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
