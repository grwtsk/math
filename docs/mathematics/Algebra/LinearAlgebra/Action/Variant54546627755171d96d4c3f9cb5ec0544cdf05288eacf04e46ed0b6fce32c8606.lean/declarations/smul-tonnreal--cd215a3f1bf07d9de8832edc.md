# smul_toNNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bb0c29f-c632-a339-c62c-8620d0846438",
  "kind": "theorem",
  "lexical_name": "smul_toNNReal",
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
  "slug": "smul-tonnreal--cd215a3f1bf07d9de8832edc",
  "source": {
    "blob": "ad7f0c8d00a109680b3996e4908c406661942140",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 102,
    "path": "GRWTSK/Algebra/LinearAlgebra/Action/Variant54546627755171d96d4c3f9cb5ec0544cdf05288eacf04e46ed0b6fce32c8606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd215a3f1bf07d9de8832edcbf106d116bd7cfe58d52ac6152074e1811992236",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Action/Variant54546627755171d96d4c3f9cb5ec0544cdf05288eacf04e46ed0b6fce32c8606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bb0c29f-c632-a339-c62c-8620d0846438`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_toNNReal (a : ℝ≥0) (b : ℝ≥0∞) : (a • b).toNNReal = a * b.toNNReal := by
  change ((a : ℝ≥0∞) * b).toNNReal = a * b.toNNReal
  simp only [ENNReal.toNNReal_mul, ENNReal.toNNReal_coe]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Action/Variant54546627755171d96d4c3f9cb5ec0544cdf05288eacf04e46ed0b6fce32c8606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Action/Variant54546627755171d96d4c3f9cb5ec0544cdf05288eacf04e46ed0b6fce32c8606.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad7f0c8d00a109680b3996e4908c406661942140` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
