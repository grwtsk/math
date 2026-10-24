# forall_vanishesTrivially_iff_forall_rTensor_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:549a51e2-f4c4-40c1-deda-ed02d86e25a5",
  "kind": "theorem",
  "lexical_name": "forall_vanishesTrivially_iff_forall_rTensor_injective",
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
  "slug": "forall-vanishestrivially-iff-forall-rtensor-injective--84906641b06bb57a1646f881",
  "source": {
    "blob": "58c8448212e81a6799d554fef30b4ba727c8d452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 257,
    "path": "GRWTSK/Algebra/LinearAlgebra/Vanishing/Variant9a147622a45fe4c18f9993dc03d783a3e116a4e62a85caae31f4048b74dec605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84906641b06bb57a1646f8814a1719859209c3a5b9b12890cc8dd25b0726d033",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Vanishing/Variant9a147622a45fe4c18f9993dc03d783a3e116a4e62a85caae31f4048b74dec605.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:549a51e2-f4c4-40c1-deda-ed02d86e25a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forall_vanishesTrivially_iff_forall_rTensor_injective :
    (∀ {l : ℕ} {m : Fin l → M} {n : Fin l → N},
      ∑ i, m i ⊗ₜ n i = (0 : M ⊗[R] N) → VanishesTrivially R m n) ↔
    ∀ M' : Submodule R M, Injective (rTensor N M'.subtype) := by
  constructor
  · intro h
    exact rTensor_injective_of_forall_vanishesTrivially R h
  · intro h k m n hmn
    exact vanishesTrivially_of_sum_tmul_eq_zero_of_rTensor_injective R (h _) hmn

/-- Every expression $\sum_i m_i \otimes n_i$ which vanishes also vanishes trivially if and only if
for every finitely generated submodule $M' \subseteq M$, the map $M' \otimes N \to M \otimes N$ is
injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Vanishing/Variant9a147622a45fe4c18f9993dc03d783a3e116a4e62a85caae31f4048b74dec605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Vanishing/Variant9a147622a45fe4c18f9993dc03d783a3e116a4e62a85caae31f4048b74dec605.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58c8448212e81a6799d554fef30b4ba727c8d452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
