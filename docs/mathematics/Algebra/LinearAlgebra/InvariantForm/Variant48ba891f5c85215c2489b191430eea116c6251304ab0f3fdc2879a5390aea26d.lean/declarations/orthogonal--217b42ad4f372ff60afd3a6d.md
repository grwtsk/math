# orthogonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:387b739a78ffa9b73d955a5e199a5b648fd6567b31910fb4148e3a552972ac40",
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
  "slug": "orthogonal--217b42ad4f372ff60afd3a6d",
  "source": {
    "blob": "2456f19f6d0658c7f1361dc64afb142aded272cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:217b42ad4f372ff60afd3a6d75412b9d90ff088bf2f922607433f5afb8fd5aaa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:387b739a78ffa9b73d955a5e199a5b648fd6567b31910fb4148e3a552972ac40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2456f19f6d0658c7f1361dc64afb142aded272cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
