# continuum_le_cardinal_of_module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:384fc3cb-21b0-cd10-c779-79a019704412",
  "kind": "theorem",
  "lexical_name": "continuum_le_cardinal_of_module",
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
  "slug": "continuum-le-cardinal-of-module--d9a4ca895550ad6ec76607c2",
  "source": {
    "blob": "e17f356893794863ef935e11af2359e1dc053c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9a4ca895550ad6ec76607c2c4dde1937e010d6265b0fb36f5bbe8301ce7e46c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:384fc3cb-21b0-cd10-c779-79a019704412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuum_le_cardinal_of_module
    (𝕜 : Type u) (E : Type v) [NontriviallyNormedField 𝕜] [CompleteSpace 𝕜]
    [AddCommGroup E] [Module 𝕜 E] [Nontrivial E] : 𝔠 ≤ #E := by
  have A : lift.{v} (𝔠 : Cardinal.{u}) ≤ lift.{v} (#𝕜) := by
    simpa using continuum_le_cardinal_of_nontriviallyNormedField 𝕜
  simpa using A.trans (Cardinal.mk_le_of_module 𝕜 E)

/-- In a topological vector space over a nontrivially normed field, any neighborhood of zero has
the same cardinality as the whole space.

See also `cardinal_eq_of_mem_nhds`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e17f356893794863ef935e11af2359e1dc053c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
