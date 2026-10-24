# exponentWeight_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d04058c4-a504-9826-f6ca-faadd9756c23",
  "kind": "theorem",
  "lexical_name": "exponentWeight_summable",
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
  "slug": "exponentweight-summable--7a7075c5fa4eced3e7d58102",
  "source": {
    "blob": "5b3880fe728ee21837fb2e78540225350b8f2550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 83,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a7075c5fa4eced3e7d581029e6bdd2519f1617e6f9240370cbcc7ff8d802e38",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d04058c4-a504-9826-f6ca-faadd9756c23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponentWeight_summable (r : ℕ) : Summable (exponentWeight r) := by
  have hs := (summable_pow_mul_geometric_of_norm_lt_one r (r:=(1/2:ℝ)) (by norm_num)).comp_injective
    (i:=fun n : ℕ => n+2) (by intro a b h; dsimp at h;omega)
  apply (hs.mul_left (4:ℝ)).congr
  intro n
  unfold exponentWeight
  simp only [Function.comp_apply,pow_add]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3880fe728ee21837fb2e78540225350b8f2550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
