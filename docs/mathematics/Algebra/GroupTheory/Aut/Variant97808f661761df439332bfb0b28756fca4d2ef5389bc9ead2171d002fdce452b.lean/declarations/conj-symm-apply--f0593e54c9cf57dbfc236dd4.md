# conj_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5953cc2-1b3c-b80f-cc50-079ab1c89990",
  "kind": "theorem",
  "lexical_name": "conj_symm_apply",
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
  "slug": "conj-symm-apply--f0593e54c9cf57dbfc236dd4",
  "source": {
    "blob": "4916ded16df28ed4a9b383b8c0f50baf94567e35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 298,
    "path": "GRWTSK/Algebra/GroupTheory/Aut/Variant97808f661761df439332bfb0b28756fca4d2ef5389bc9ead2171d002fdce452b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0593e54c9cf57dbfc236dd4fa36c7f10f39d78c50e9bec03ded933211fe53ea",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Aut/Variant97808f661761df439332bfb0b28756fca4d2ef5389bc9ead2171d002fdce452b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5953cc2-1b3c-b80f-cc50-079ab1c89990`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conj_symm_apply [AddGroup G] (g h : G) : (conj g).symm h = -g + h + g :=
  rfl
#align add_aut.conj_symm_apply AddAut.conj_symm_apply

-- Porting note : the exact translation of this mathlib3 lemma would be`(-conj g) h = -g + h + g`,
-- but this no longer pass the simp_nf linter, as the LHS simplifies by `toMul_neg` to
-- `(Additive.toMul (conj g))⁻¹`.
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Aut/Variant97808f661761df439332bfb0b28756fca4d2ef5389bc9ead2171d002fdce452b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Aut/Variant97808f661761df439332bfb0b28756fca4d2ef5389bc9ead2171d002fdce452b.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4916ded16df28ed4a9b383b8c0f50baf94567e35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
