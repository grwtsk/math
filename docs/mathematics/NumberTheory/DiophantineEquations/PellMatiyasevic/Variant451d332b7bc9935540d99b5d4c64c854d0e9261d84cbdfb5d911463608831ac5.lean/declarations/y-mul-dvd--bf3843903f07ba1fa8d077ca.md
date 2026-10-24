# y_mul_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c12b4bcd-99cc-768a-8c29-6c031fd812cb",
  "kind": "theorem",
  "lexical_name": "y_mul_dvd",
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
  "slug": "y-mul-dvd--bf3843903f07ba1fa8d077ca",
  "source": {
    "blob": "7813d6e6a7d7267649a4a4f69801bfc5fea99d2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 437,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf3843903f07ba1fa8d077caa789ee3f1fa30845ed58bdf7454b51d94eae808b",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c12b4bcd-99cc-768a-8c29-6c031fd812cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem y_mul_dvd (n) : ∀ k, yn a1 n ∣ yn a1 (n * k)
  | 0 => dvd_zero _
  | k + 1 => by
    rw [Nat.mul_succ, yn_add]; exact dvd_add (dvd_mul_left _ _) ((y_mul_dvd _ k).mul_right _)
#align pell.y_mul_dvd Pell.y_mul_dvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7813d6e6a7d7267649a4a4f69801bfc5fea99d2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
