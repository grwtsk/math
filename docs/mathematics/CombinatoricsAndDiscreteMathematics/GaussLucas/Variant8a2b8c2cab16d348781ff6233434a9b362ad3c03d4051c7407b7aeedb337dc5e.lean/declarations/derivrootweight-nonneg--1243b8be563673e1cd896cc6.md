# derivRootWeight_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9bdf7d351b4e162241c38e073c62cdbc6a7d12db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc4261ad-dfec-6ffd-093b-8737fb80ff77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e6c729b-1297-f67d-9899-99c530e247ad",
  "kind": "theorem",
  "lexical_name": "derivRootWeight_nonneg",
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
  "slug": "derivrootweight-nonneg--1243b8be563673e1cd896cc6",
  "source": {
    "blob": "9bdf7d351b4e162241c38e073c62cdbc6a7d12db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1243b8be563673e1cd896cc687178415b10462c057c69dd8ccea3bf15c6146fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e6c729b-1297-f67d-9899-99c530e247ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivRootWeight_nonneg (P : ℂ[X]) (z w : ℂ) : 0 ≤ derivRootWeight P z w := by
  simp only [derivRootWeight, Pi.single, Function.update_apply]
  split_ifs <;> first | positivity | simp

variable {P : ℂ[X]} {z : ℂ}

/-- The sum of the weights `derivRootWeight P z w` of all the roots `w` of `P` is positive,
provided that `P` is not a constant polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bdf7d351b4e162241c38e073c62cdbc6a7d12db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
