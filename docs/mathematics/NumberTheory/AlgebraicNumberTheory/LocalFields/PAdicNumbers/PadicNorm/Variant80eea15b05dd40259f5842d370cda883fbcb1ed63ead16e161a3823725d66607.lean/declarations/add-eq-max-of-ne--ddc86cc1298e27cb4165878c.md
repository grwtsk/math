# add_eq_max_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e8647a2a1598588725b54aa1784dcd9f9666a56",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80eea15b05dd40259f5842d370cda883fbcb1ed63ead16e161a3823725d66607.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5a1c00d-7860-5c8a-95f7-084a0aad663f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50700919-a572-bdde-9e24-c0c2639ea637",
  "kind": "theorem",
  "lexical_name": "add_eq_max_of_ne",
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
  "slug": "add-eq-max-of-ne--ddc86cc1298e27cb4165878c",
  "source": {
    "blob": "5e8647a2a1598588725b54aa1784dcd9f9666a56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 195,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant80eea15b05dd40259f5842d370cda883fbcb1ed63ead16e161a3823725d66607.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddc86cc1298e27cb4165878c8951fc84286b8c5adb71280cec491438ebc1066f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant80eea15b05dd40259f5842d370cda883fbcb1ed63ead16e161a3823725d66607.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50700919-a572-bdde-9e24-c0c2639ea637`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_eq_max_of_ne {q r : ℚ} (hne : padicNorm p q ≠ padicNorm p r) :
    padicNorm p (q + r) = max (padicNorm p q) (padicNorm p r) := by
  wlog hlt : padicNorm p r < padicNorm p q
  · rw [add_comm, max_comm]
    exact this hne.symm (hne.lt_or_lt.resolve_right hlt)
  have : padicNorm p q ≤ max (padicNorm p (q + r)) (padicNorm p r) :=
    calc
      padicNorm p q = padicNorm p (q + r + (-r)) := by ring_nf
      _ ≤ max (padicNorm p (q + r)) (padicNorm p (-r)) := padicNorm.nonarchimedean
      _ = max (padicNorm p (q + r)) (padicNorm p r) := by simp
  have hnge : padicNorm p r ≤ padicNorm p (q + r) := by
    apply le_of_not_gt
    intro hgt
    rw [max_eq_right_of_lt hgt] at this
    exact not_lt_of_ge this hlt
  have : padicNorm p q ≤ padicNorm p (q + r) := by rwa [max_eq_left hnge] at this
  apply _root_.le_antisymm
  · apply padicNorm.nonarchimedean
  · rwa [max_eq_left_of_lt hlt]

/-- The `p`-adic norm is an absolute value: positive-definite and multiplicative, satisfying the
triangle inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant80eea15b05dd40259f5842d370cda883fbcb1ed63ead16e161a3823725d66607.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant80eea15b05dd40259f5842d370cda883fbcb1ed63ead16e161a3823725d66607.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e8647a2a1598588725b54aa1784dcd9f9666a56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
