# entrywise_sup_norm_bound_of_unitary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f38eb419-6665-1f9e-bd87-0a8b4c49048a",
  "kind": "theorem",
  "lexical_name": "entrywise_sup_norm_bound_of_unitary",
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
  "slug": "entrywise-sup-norm-bound-of-unitary--222a5cba3c4b2176da31063a",
  "source": {
    "blob": "2c692ba3cc3a8758ebbf11587d09b59cb9af40ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:222a5cba3c4b2176da31063a44e1434ca35aa23335bf5ea9c992131f6e4ab15a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f38eb419-6665-1f9e-bd87-0a8b4c49048a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem entrywise_sup_norm_bound_of_unitary {U : Matrix n n 𝕜} (hU : U ∈ Matrix.unitaryGroup n 𝕜) :
    ‖U‖ ≤ 1 := by
  conv => -- Porting note: was `simp_rw [pi_norm_le_iff_of_nonneg zero_le_one]`
    rw [pi_norm_le_iff_of_nonneg zero_le_one]
    intro
    rw [pi_norm_le_iff_of_nonneg zero_le_one]
  intros
  exact entry_norm_bound_of_unitary hU _ _
#align entrywise_sup_norm_bound_of_unitary entrywise_sup_norm_bound_of_unitary

end EntrywiseSupNorm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c692ba3cc3a8758ebbf11587d09b59cb9af40ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
