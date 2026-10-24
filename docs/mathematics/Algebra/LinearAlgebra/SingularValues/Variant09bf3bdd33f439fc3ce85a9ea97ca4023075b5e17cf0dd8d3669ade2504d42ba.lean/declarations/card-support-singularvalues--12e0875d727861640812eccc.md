# card_support_singularValues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96e32fb5-5dc8-5d90-8cfd-ce787afd0936",
  "kind": "theorem",
  "lexical_name": "card_support_singularValues",
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
  "slug": "card-support-singularvalues--12e0875d727861640812eccc",
  "source": {
    "blob": "8865473821c20caa662baf8dc97dce47c3929001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 181,
    "path": "GRWTSK/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12e0875d727861640812eccceac1eca23cc2fdfb421f17db7ba1a7ae010f397b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96e32fb5-5dc8-5d90-8cfd-ce787afd0936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_support_singularValues : T.singularValues.support.card = finrank 𝕜 T.range := by
  have hS : ∀ m ∈ T.singularValues.support, m < finrank 𝕜 E := by
    grind [singularValues_of_finrank_le]
  have hT := T.isSymmetric_adjoint_comp_self
  have : T.singularValues.support.attachFin hS = ({i | hT.eigenvalues rfl i = (0 : 𝕜)} : Finset _)ᶜ
    := by ext i; simp [T.singularValues_fin, T.isPositive_adjoint_comp_self.nonneg_eigenvalues]
  rw [← T.singularValues.support.card_attachFin hS, this, Finset.card_compl, Fintype.card_fin,
    hT.card_filter_eigenvalues_eq rfl 0, Module.End.eigenspace_zero,
    ← (T.adjoint ∘ₗ T).finrank_range_add_finrank_ker, add_tsub_cancel_right,
    T.range_adjoint_comp_self, finrank_range_adjoint]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SingularValues/Variant09bf3bdd33f439fc3ce85a9ea97ca4023075b5e17cf0dd8d3669ade2504d42ba.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8865473821c20caa662baf8dc97dce47c3929001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
