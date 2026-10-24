# _root_.GRWTSK.Algebra.LinearAlgebra.SpanCoeEqRestrictScalars.Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.LinearMap.exists_ne_zero_of_sSup_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e2f7200-f80c-b22c-4401-ff78f88be96a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.SpanCoeEqRestrictScalars.Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.LinearMap.exists_ne_zero_of_sSup_eq",
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
  "slug": "root-grwtsk-algebra-linearalgebra-spancoeeqrestrictscalars-variantab28d0--eb255cb8f4221db1971d12e5",
  "source": {
    "blob": "5d128fb58c9f480cc3665978b0329ac22edfe3ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 427,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant29abf59a892e9c7c73bd0266a8300465052c565290f158d621bc097803f5bde9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb255cb8f4221db1971d12e514247a0eee5fadbdcd015bf149ca2761f0e0941d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant29abf59a892e9c7c73bd0266a8300465052c565290f158d621bc097803f5bde9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e2f7200-f80c-b22c-4401-ff78f88be96a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.SpanCoeEqRestrictScalars.Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.LinearMap.exists_ne_zero_of_sSup_eq {N : Submodule R M} {f : N →ₛₗ[σ₁₂] M₂}
    (h : f ≠ 0) (s : Set (Submodule R M)) (hs : sSup s = N):
    ∃ m, ∃ h : m ∈ s, f ∘ₛₗ inclusion ((le_sSup h).trans_eq hs) ≠ 0 :=
  have ⟨_, ⟨m, hm, rfl⟩, ne⟩ := LinearMap.exists_ne_zero_of_sSup_eq_top h (comap N.subtype '' s) <|
    by rw [sSup_eq_iSup] at hs; rw [sSup_image, ← hs, biSup_comap_subtype_eq_top]
  ⟨m, hm, fun eq ↦ ne (LinearMap.ext fun x ↦ congr($eq ⟨x, x.2⟩))⟩

end AddCommMonoid

section AddCommGroup

variable [Ring R] [AddCommGroup M] [Module R M]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant29abf59a892e9c7c73bd0266a8300465052c565290f158d621bc097803f5bde9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant29abf59a892e9c7c73bd0266a8300465052c565290f158d621bc097803f5bde9.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d128fb58c9f480cc3665978b0329ac22edfe3ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
