# orthogonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e19c2d568e75c52b602ede0d76479628555fa5ace72c80a0c28674a2e3c83223",
  "kind": "def",
  "lexical_name": "orthogonal",
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
  "slug": "orthogonal--25a21ac2a5d3892655d25ea5",
  "source": {
    "blob": "4330b31f6f5e1875bc8aa11d6380fc2cfa532087",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25a21ac2a5d3892655d25ea57e9286ae2a2f37614e5f635636ef9438335ce8c3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e19c2d568e75c52b602ede0d76479628555fa5ace72c80a0c28674a2e3c83223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orthogonal (hΦ_inv : Φ.lieInvariant L) (N : LieSubmodule R L M) : LieSubmodule R L M where
  __ := Φ.orthogonal N
  lie_mem {x y} := by
    suffices (∀ n ∈ N, Φ n y = 0) → ∀ n ∈ N, Φ n ⁅x, y⁆ = 0 by
      simpa only [LinearMap.BilinForm.isOrtho_def, -- and some default simp lemmas
        AddSubsemigroup.mem_carrier, AddSubmonoid.mem_toSubsemigroup, Submodule.mem_toAddSubmonoid,
        LinearMap.BilinForm.mem_orthogonal_iff, LieSubmodule.mem_toSubmodule]
    intro H a ha
    rw [← neg_eq_zero, ← hΦ_inv]
    exact H _ <| N.lie_mem ha

variable (hΦ_inv : Φ.lieInvariant L)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4330b31f6f5e1875bc8aa11d6380fc2cfa532087` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
