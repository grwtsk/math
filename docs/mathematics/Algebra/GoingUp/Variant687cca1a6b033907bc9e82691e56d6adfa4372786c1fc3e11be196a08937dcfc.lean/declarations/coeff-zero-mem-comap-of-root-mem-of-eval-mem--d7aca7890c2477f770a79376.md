# coeff_zero_mem_comap_of_root_mem_of_eval_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1053c93-64f7-9b07-52f1-7e3da32b1516",
  "kind": "theorem",
  "lexical_name": "coeff_zero_mem_comap_of_root_mem_of_eval_mem",
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
  "slug": "coeff-zero-mem-comap-of-root-mem-of-eval-mem--d7aca7890c2477f770a79376",
  "source": {
    "blob": "c60f1dcc7ff97877c3f0d91529924042425f5cee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 43,
    "path": "GRWTSK/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7aca7890c2477f770a7937661d091b5f4ac0ea09025386d04ce1d7631434fbe",
  "verification": {
    "reference": "docs/verification/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1053c93-64f7-9b07-52f1-7e3da32b1516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_zero_mem_comap_of_root_mem_of_eval_mem {r : S} (hr : r ∈ I) {p : R[X]}
    (hp : p.eval₂ f r ∈ I) : p.coeff 0 ∈ I.comap f := by
  rw [← p.divX_mul_X_add, eval₂_add, eval₂_C, eval₂_mul, eval₂_X] at hp
  refine mem_comap.mpr ((I.add_mem_iff_right ?_).mp hp)
  exact I.mul_mem_left _ hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c60f1dcc7ff97877c3f0d91529924042425f5cee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
