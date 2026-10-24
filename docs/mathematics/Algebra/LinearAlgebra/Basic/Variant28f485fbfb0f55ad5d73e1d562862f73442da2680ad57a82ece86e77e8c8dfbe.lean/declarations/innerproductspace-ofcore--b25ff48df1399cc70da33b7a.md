# InnerProductSpace.ofCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63d15ac61f875c0f0ff5aa052e1161fa0b042f869a25e8f032e8936ada3f3e99",
  "kind": "def",
  "lexical_name": "InnerProductSpace.ofCore",
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
  "slug": "innerproductspace-ofcore--b25ff48df1399cc70da33b7a",
  "source": {
    "blob": "fe0b40c10ae995e75e59bb4387ec36d450a5abde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 415,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b25ff48df1399cc70da33b7af7b83e89887a8d9f96446e9319d56a4c7179e49d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63d15ac61f875c0f0ff5aa052e1161fa0b042f869a25e8f032e8936ada3f3e99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def InnerProductSpace.ofCore [AddCommGroup F] [Module 𝕜 F] (c : InnerProductSpace.Core 𝕜 F) :
    InnerProductSpace 𝕜 F :=
  letI : NormedSpace 𝕜 F := @InnerProductSpace.Core.toNormedSpace 𝕜 F _ _ _ c
  { c with
    norm_sq_eq_inner := fun x => by
      have h₁ : ‖x‖ ^ 2 = sqrt (re (c.inner x x)) ^ 2 := rfl
      have h₂ : 0 ≤ re (c.inner x x) := InnerProductSpace.Core.inner_self_nonneg
      simp [h₁, sq_sqrt, h₂] }
#align inner_product_space.of_core InnerProductSpace.ofCore

end

/-! ### Properties of inner product spaces -/


variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]

variable [NormedAddCommGroup F] [InnerProductSpace ℝ F]

variable [dec_E : DecidableEq E]

local notation "⟪" x ", " y "⟫" => @inner 𝕜 _ _ x y

local notation "IK" => @IsROrC.I 𝕜 _

local postfix:90 "†" => starRingEnd _

export InnerProductSpace (norm_sq_eq_inner)

section BasicProperties

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe0b40c10ae995e75e59bb4387ec36d450a5abde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
