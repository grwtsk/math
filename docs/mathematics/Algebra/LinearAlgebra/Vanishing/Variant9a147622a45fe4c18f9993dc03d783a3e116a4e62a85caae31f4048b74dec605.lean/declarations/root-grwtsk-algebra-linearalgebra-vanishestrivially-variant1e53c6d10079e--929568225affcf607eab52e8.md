# _root_.GRWTSK.Algebra.LinearAlgebra.VanishesTrivially.Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.Equiv.vanishesTrivially_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e8baf8f-f8f9-8039-5289-d8816395273e",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.VanishesTrivially.Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.Equiv.vanishesTrivially_comp",
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
  "slug": "root-grwtsk-algebra-linearalgebra-vanishestrivially-variant1e53c6d10079e--929568225affcf607eab52e8",
  "source": {
    "blob": "58c8448212e81a6799d554fef30b4ba727c8d452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 102,
    "path": "GRWTSK/Algebra/LinearAlgebra/Vanishing/Variant9a147622a45fe4c18f9993dc03d783a3e116a4e62a85caae31f4048b74dec605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:929568225affcf607eab52e8effb8a492c754090f1e2bcfa3d9cf67e1cc22c14",
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

Occurrence: `result:5e8baf8f-f8f9-8039-5289-d8816395273e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.VanishesTrivially.Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.Equiv.vanishesTrivially_comp {κ} [Fintype κ] (e : κ ≃ ι) :
    VanishesTrivially R (m ∘ e) (n ∘ e) ↔ VanishesTrivially R m n := by
  simp [VanishesTrivially, ← e.forall_congr_right,
    ← (e.arrowCongr (.refl _)).exists_congr_right, ← e.sum_comp]

variable (R)

/-- **Equational criterion for vanishing**
[A. Altman and S. Kleiman, *A term of commutative algebra* (Lemma 8.16)][altman2021term],
backward direction.

If the expression $\sum_i m_i \otimes n_i$ vanishes trivially, then it vanishes.
That is, $\sum_i m_i \otimes n_i = 0$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Vanishing/Variant9a147622a45fe4c18f9993dc03d783a3e116a4e62a85caae31f4048b74dec605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Vanishing/Variant9a147622a45fe4c18f9993dc03d783a3e116a4e62a85caae31f4048b74dec605.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58c8448212e81a6799d554fef30b4ba727c8d452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
