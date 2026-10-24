# laurentAux_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6faccb58-7173-9265-2d4f-70771cb65117",
  "kind": "theorem",
  "lexical_name": "laurentAux_algebraMap",
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
  "slug": "laurentaux-algebramap--82a0c5e153df625588c41862",
  "source": {
    "blob": "7d7bc8b6a8e7b2656c36d18a6b0e167a3b9cc909",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 82,
    "path": "GRWTSK/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82a0c5e153df625588c4186201f0d3b78552c7a71ddd0578ac45c6761fd928c8",
  "verification": {
    "reference": "docs/verification/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6faccb58-7173-9265-2d4f-70771cb65117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laurentAux_algebraMap : laurentAux r (algebraMap _ _ p) = algebraMap _ _ (taylor r p) := by
  rw [← mk_one, ← mk_one, mk_eq_div, laurentAux_div, mk_eq_div, taylor_one, map_one, map_one,
    map_one]
#align ratfunc.laurent_aux_algebra_map RatFunc.laurentAux_algebraMap

/-- The Laurent expansion of rational functions about a value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d7bc8b6a8e7b2656c36d18a6b0e167a3b9cc909` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
