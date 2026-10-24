# normUnit_content

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47991f35-e3fd-4cbd-b21b-73bcf720c7e3",
  "kind": "theorem",
  "lexical_name": "normUnit_content",
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
  "slug": "normunit-content--4cb1e7014b2c80801d19d920",
  "source": {
    "blob": "8cb7485b26acfec79834e9ff258359d3eb1ab6e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 180,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variant113eeeacc3a8644c06c11b5a0e28df00dcc0a007874a4cc40313bdc3a4ae1ff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cb1e7014b2c80801d19d92081fca40270291b3b507093b96f2480413011d808",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Content/Variant113eeeacc3a8644c06c11b5a0e28df00dcc0a007874a4cc40313bdc3a4ae1ff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47991f35-e3fd-4cbd-b21b-73bcf720c7e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normUnit_content {p : R[X]} : normUnit (content p) = 1 := by
  by_cases hp0 : p.content = 0
  · simp [hp0]
  · ext
    apply mul_left_cancel₀ hp0
    rw [← normalize_apply, normalize_content, Units.val_one, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Content/Variant113eeeacc3a8644c06c11b5a0e28df00dcc0a007874a4cc40313bdc3a4ae1ff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Content/Variant113eeeacc3a8644c06c11b5a0e28df00dcc0a007874a4cc40313bdc3a4ae1ff6.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cb7485b26acfec79834e9ff258359d3eb1ab6e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
