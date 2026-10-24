# characteristic_eventually_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a10cfecad7ddd886b6c2ed8ff045467f0c5647c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a063f4e3fb0ceca8a67575982b9cd8d22f04b365697a56461fb14c6e0e9d38d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e7a7e8d-a2a4-ecb0-9074-a4c383a567d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6c3b5bc-e3f6-47d3-29b3-459942daedc0",
  "kind": "theorem",
  "lexical_name": "characteristic_eventually_nonneg",
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
  "slug": "characteristic-eventually-nonneg--8691596e3b4e30cf4f4b283d",
  "source": {
    "blob": "2a10cfecad7ddd886b6c2ed8ff045467f0c5647c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 92,
    "path": "GRWTSK/Analysis/CharacteristicFunction/Varianta063f4e3fb0ceca8a67575982b9cd8d22f04b365697a56461fb14c6e0e9d38d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8691596e3b4e30cf4f4b283d0111d2b4310cc53c5b0964b988ad467531f2a276",
  "verification": {
    "reference": "docs/verification/Analysis/CharacteristicFunction/Varianta063f4e3fb0ceca8a67575982b9cd8d22f04b365697a56461fb14c6e0e9d38d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6c3b5bc-e3f6-47d3-29b3-459942daedc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem characteristic_eventually_nonneg :
    0 ≤ᶠ[Filter.atTop] characteristic f a := by
  filter_upwards [Filter.eventually_ge_atTop 1] using fun _ hr ↦ by simp [characteristic_nonneg hr]

/-!
## Behaviour under Arithmetic Operations
-/

/--
For `1 ≤ r`, the characteristic function of a sum `∑ a, f a` at `⊤` is less than or equal to the sum
of the characteristic functions of `f ·`, plus `log s.card`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CharacteristicFunction/Varianta063f4e3fb0ceca8a67575982b9cd8d22f04b365697a56461fb14c6e0e9d38d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CharacteristicFunction/Varianta063f4e3fb0ceca8a67575982b9cd8d22f04b365697a56461fb14c6e0e9d38d5.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a10cfecad7ddd886b6c2ed8ff045467f0c5647c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
