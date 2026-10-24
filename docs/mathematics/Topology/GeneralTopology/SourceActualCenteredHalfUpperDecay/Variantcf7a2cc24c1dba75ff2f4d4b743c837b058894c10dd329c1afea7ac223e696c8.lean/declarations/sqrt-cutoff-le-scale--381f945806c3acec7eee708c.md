# sqrt_cutoff_le_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77ad54d9-5e09-570a-7020-42a03b4f49f8",
  "kind": "theorem",
  "lexical_name": "sqrt_cutoff_le_scale",
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
  "slug": "sqrt-cutoff-le-scale--381f945806c3acec7eee708c",
  "source": {
    "blob": "e314d8ec072fac1c91dbd08e264db3483d2e57fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredHalfUpperDecay/Variantcf7a2cc24c1dba75ff2f4d4b743c837b058894c10dd329c1afea7ac223e696c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:381f945806c3acec7eee708caa5b6afc1e268886d05134a5f7db54c7a880d160",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredHalfUpperDecay/Variantcf7a2cc24c1dba75ff2f4d4b743c837b058894c10dd329c1afea7ac223e696c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77ad54d9-5e09-570a-7020-42a03b4f49f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sqrt_cutoff_le_scale {A : ℝ} (hA : 1 ≤ A) :
    Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ 2 * A := by
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hs := Real.sq_sqrt (show (0 : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) from
    Nat.cast_nonneg _)
  simp only [Nat.cast_add, Nat.cast_one] at hs
  simp only [Nat.cast_add, Nat.cast_one]
  nlinarith [Real.sqrt_nonneg ((vaughanCutoff A + 1 : ℕ) : ℝ)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredHalfUpperDecay/Variantcf7a2cc24c1dba75ff2f4d4b743c837b058894c10dd329c1afea7ac223e696c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredHalfUpperDecay/Variantcf7a2cc24c1dba75ff2f4d4b743c837b058894c10dd329c1afea7ac223e696c8.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e314d8ec072fac1c91dbd08e264db3483d2e57fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
