# card_roots_map_le_degree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0870a578c06f970a47356499881cd7f10435cdeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 963,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5815d23fc2708bb154206034e61070854fddcb3708cedbd1ce3e7e2821c4116.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6dfa3295-b6b4-a6ee-fd7c-075f3a7ee803",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fcdd598-1028-7b1b-9652-5cf316d315ae",
  "kind": "theorem",
  "lexical_name": "card_roots_map_le_degree",
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
  "slug": "card-roots-map-le-degree--1692fb89301a6faa7245111f",
  "source": {
    "blob": "0870a578c06f970a47356499881cd7f10435cdeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 968,
    "line": 963,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Roots/Variante5815d23fc2708bb154206034e61070854fddcb3708cedbd1ce3e7e2821c4116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1692fb89301a6faa7245111f1ef9512c5ec7c3771dbd1bbeb2709e59dd1a2fa9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Roots/Variante5815d23fc2708bb154206034e61070854fddcb3708cedbd1ce3e7e2821c4116.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fcdd598-1028-7b1b-9652-5cf316d315ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 963–968.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_roots_map_le_degree {A B : Type*} [Semiring A] [CommRing B] [IsDomain B]
    {f : A →+* B} (p : A[X]) (hp0 : p ≠ 0) : (p.map f).roots.card ≤ p.degree := by
  by_cases hpm0 : p.map f = 0
  · simp [hp0, hpm0, zero_le_degree_iff]
  exact card_roots hpm0 |>.trans degree_map_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Roots/Variante5815d23fc2708bb154206034e61070854fddcb3708cedbd1ce3e7e2821c4116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Roots/Variante5815d23fc2708bb154206034e61070854fddcb3708cedbd1ce3e7e2821c4116.lean#L963).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0870a578c06f970a47356499881cd7f10435cdeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
