# eq_gcd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcd7a748f78c5b7e651f5185685c2284a863037b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1937,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51dea432e1f2160fa698194ab799532bebaf273f465d3edcab41ea0f6f4566b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:271a3f4f-c0b3-3486-acf4-86ed2bf86154",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4e2f390-ea27-462c-3fcc-1bc4838742c8",
  "kind": "theorem",
  "lexical_name": "eq_gcd",
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
  "slug": "eq-gcd--a1a32a4fd215399cafab1513",
  "source": {
    "blob": "bcd7a748f78c5b7e651f5185685c2284a863037b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1942,
    "line": 1937,
    "path": "GRWTSK/Algebra/CommSolver/Variant51dea432e1f2160fa698194ab799532bebaf273f465d3edcab41ea0f6f4566b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1a32a4fd215399cafab151320d163004f1ad129d3df6e501a67728ee20557eb",
  "verification": {
    "reference": "docs/verification/Algebra/CommSolver/Variant51dea432e1f2160fa698194ab799532bebaf273f465d3edcab41ea0f6f4566b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4e2f390-ea27-462c-3fcc-1bc4838742c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1937–1942.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_gcd {α} [CommRing α] (ctx : Context α) (a b : Int) (p₁ p₂ p : Poly)
    : eq_gcd_cert a b p₁ p₂ p → p₁.denote ctx = 0 → p₂.denote ctx = 0 → p.denote ctx = 0 := by
  simp [eq_gcd_cert]; cases p₁ <;> cases p₂ <;> cases p <;> simp [Poly.denote]
  rename_i n m g
  apply gcd_eq_0 g n m a b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CommSolver/Variant51dea432e1f2160fa698194ab799532bebaf273f465d3edcab41ea0f6f4566b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommSolver/Variant51dea432e1f2160fa698194ab799532bebaf273f465d3edcab41ea0f6f4566b1.lean#L1937).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcd7a748f78c5b7e651f5185685c2284a863037b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
