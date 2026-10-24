# retractionSplitEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fabc66d3f03be6847f21307259eaa2f03569bf0ccd089b1d1f6f4ca0e43d60e1",
  "kind": "def",
  "lexical_name": "retractionSplitEquiv",
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
  "slug": "retractionsplitequiv--fad1ded2c73abceb8100341a",
  "source": {
    "blob": "4e39fbf33bc1146254562bd88f6c5ca8f839037c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 10,
    "path": "GRWTSK/LinearAlgebra/RetractionSplitEquiv.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fad1ded2c73abceb8100341a9ae2af7a3a2502714ce67567f36c8f51933b14db",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RetractionSplitEquiv.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fabc66d3f03be6847f21307259eaa2f03569bf0ccd089b1d1f6f4ca0e43d60e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def retractionSplitEquiv (i : B →ₗ[R] M) (r : M →ₗ[R] B) (hr : ∀ b, r (i b) = b) :
    M ≃ₗ[R] B × LinearMap.ker r where
  toFun x := (r x, ⟨retractionComplement i r x, retractionComplement_in_kernel i r hr x⟩)
  invFun y := i y.1 + y.2
  left_inv x := (retractionComplement_decomposition i r x).symm
  right_inv y := by
    rcases y with ⟨b, k, hk⟩
    have hk0 : r k = 0 := hk
    apply Prod.ext
    · simp [hr, hk0]
    · apply Subtype.ext
      simp [retractionComplement, hr, hk0]
  map_add' x y := by
    apply Prod.ext
    · simp
    · apply Subtype.ext
      simp
  map_smul' c x := by
    apply Prod.ext
    · simp
    · apply Subtype.ext
      simp

/-- The complementary part is exactly the retraction-kernel coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/RetractionSplitEquiv.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/RetractionSplitEquiv.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e39fbf33bc1146254562bd88f6c5ca8f839037c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
