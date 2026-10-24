# divp_eq_divp_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "76623252655e245a0372bfff3cb34444f0983670",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c230b50a819ce94ec59e685a7a8365190fa629ecc0fb53072fa733e5b2e0f4f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2568fab6-1f9b-8c3d-51a2-eb4983004493",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ecae3cff-346c-2be9-4885-7e0644bce130",
  "kind": "theorem",
  "lexical_name": "divp_eq_divp_iff",
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
  "slug": "divp-eq-divp-iff--20ece923f3ac6dab185f0b3e",
  "source": {
    "blob": "76623252655e245a0372bfff3cb34444f0983670",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 207,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant6c230b50a819ce94ec59e685a7a8365190fa629ecc0fb53072fa733e5b2e0f4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20ece923f3ac6dab185f0b3e112c27b8a731359d3056be5e134969c50b042901",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant6c230b50a819ce94ec59e685a7a8365190fa629ecc0fb53072fa733e5b2e0f4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecae3cff-346c-2be9-4885-7e0644bce130`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divp_eq_divp_iff {x y : α} {ux uy : αˣ} : x /ₚ ux = y /ₚ uy ↔ x * uy = y * ux := by
  rw [divp_eq_iff_mul_eq, divp_mul_eq_mul_divp, divp_eq_iff_mul_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant6c230b50a819ce94ec59e685a7a8365190fa629ecc0fb53072fa733e5b2e0f4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant6c230b50a819ce94ec59e685a7a8365190fa629ecc0fb53072fa733e5b2e0f4f.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76623252655e245a0372bfff3cb34444f0983670` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
