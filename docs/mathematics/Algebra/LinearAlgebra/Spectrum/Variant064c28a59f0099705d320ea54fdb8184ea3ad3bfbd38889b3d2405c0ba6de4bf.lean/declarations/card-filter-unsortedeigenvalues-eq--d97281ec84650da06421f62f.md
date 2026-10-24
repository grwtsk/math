# card_filter_unsortedEigenvalues_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37ec781f5e915ce7189ea04fe4c36f852ea91c24",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 233,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/064c28a59f0099705d320ea54fdb8184ea3ad3bfbd38889b3d2405c0ba6de4bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e5923e4-984e-9645-6a71-c00080fcd583",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4e1cd19-1735-d166-9efe-e0fdcdf892c5",
  "kind": "theorem",
  "lexical_name": "card_filter_unsortedEigenvalues_eq",
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
  "slug": "card-filter-unsortedeigenvalues-eq--d97281ec84650da06421f62f",
  "source": {
    "blob": "37ec781f5e915ce7189ea04fe4c36f852ea91c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 233,
    "path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant064c28a59f0099705d320ea54fdb8184ea3ad3bfbd38889b3d2405c0ba6de4bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d97281ec84650da06421f62ffd0a88267719d2b0f9ef2e390f5beb8f1c8edbb6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Spectrum/Variant064c28a59f0099705d320ea54fdb8184ea3ad3bfbd38889b3d2405c0ba6de4bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4e1cd19-1735-d166-9efe-e0fdcdf892c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem card_filter_unsortedEigenvalues_eq (hT : T.IsSymmetric)
    (hn : Module.finrank 𝕜 E = n) (μ : 𝕜) :
    Finset.card {i | hT.unsortedEigenvalues hn i = μ} = Module.finrank 𝕜 (eigenspace T μ) := by
  by_cases hμ : HasEigenvalue T μ
  · convert!
      hT.direct_sum_isInternal.card_filter_subordinateOrthonormalBasisIndex_eq hn
        hT.orthogonalFamily_eigenspaces' ⟨μ, hμ⟩ with i
    unfold unsortedEigenvalues
    let ⟨x, hx⟩ := hT.direct_sum_isInternal.subordinateOrthonormalBasisIndex hn i
      hT.orthogonalFamily_eigenspaces'
    rw [Eigenvalues.val_mk, RCLike.conj_eq_iff_re.mp (hT.conj_eigenvalue_eq_self hx)]
    exact Subtype.mk_eq_mk.symm
  · rw [Module.End.hasEigenvalue_iff.not_left.mp hμ, finrank_bot, Finset.card_filter_eq_zero_iff]
    intro i _ rfl
    exact hμ (hT.hasEigenvalue_unsortedEigenvalues hn i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Spectrum/Variant064c28a59f0099705d320ea54fdb8184ea3ad3bfbd38889b3d2405c0ba6de4bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant064c28a59f0099705d320ea54fdb8184ea3ad3bfbd38889b3d2405c0ba6de4bf.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ec781f5e915ce7189ea04fe4c36f852ea91c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
