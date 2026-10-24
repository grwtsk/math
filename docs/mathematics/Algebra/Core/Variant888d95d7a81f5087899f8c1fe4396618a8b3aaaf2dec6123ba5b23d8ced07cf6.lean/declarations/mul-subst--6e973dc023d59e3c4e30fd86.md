# mul_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4b62d3e2909b97860ec9565c73a4a240756f829",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75a9729f-bd71-eba1-734c-8d545f8a1568",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25dcbf64-3196-51ec-70e9-a8afcc2a7d36",
  "kind": "theorem",
  "lexical_name": "mul_subst",
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
  "slug": "mul-subst--6e973dc023d59e3c4e30fd86",
  "source": {
    "blob": "c4b62d3e2909b97860ec9565c73a4a240756f829",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 39,
    "path": "GRWTSK/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e973dc023d59e3c4e30fd860d9f0d15e218d082f01cad0918566008cdc57256",
  "verification": {
    "reference": "docs/verification/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25dcbf64-3196-51ec-70e9-a8afcc2a7d36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_subst {α} [CommRing α] {n1 n2 k e1 e2 t1 t2 : α}
    (h1 : n1 * e1 = t1) (h2 : n2 * e2 = t2) (h3 : n1 * n2 = k) : k * (e1 * e2) = t1 * t2 := by
  rw [← h3, mul_comm n1, mul_assoc n2, ← mul_assoc n1, h1,
      ← mul_assoc n2, mul_comm n2, mul_assoc, h2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4b62d3e2909b97860ec9565c73a4a240756f829` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
