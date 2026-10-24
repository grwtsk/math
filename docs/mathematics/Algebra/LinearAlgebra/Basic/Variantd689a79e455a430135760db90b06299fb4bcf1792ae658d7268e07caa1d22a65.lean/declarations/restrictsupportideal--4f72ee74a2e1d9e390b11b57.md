# restrictSupportIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80b9e414c1ed007f4a2335f97c8b6ff0c80f4c1c2ae2fb97f5fe1587e96bce70",
  "kind": "def",
  "lexical_name": "restrictSupportIdeal",
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
  "slug": "restrictsupportideal--4f72ee74a2e1d9e390b11b57",
  "source": {
    "blob": "f139ca05206f1a00072f0cf1594bfdc9604b81ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 149,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd689a79e455a430135760db90b06299fb4bcf1792ae658d7268e07caa1d22a65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f72ee74a2e1d9e390b11b578adec5fa447cf4dfe47a365b456e07baad73c144",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd689a79e455a430135760db90b06299fb4bcf1792ae658d7268e07caa1d22a65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80b9e414c1ed007f4a2335f97c8b6ff0c80f4c1c2ae2fb97f5fe1587e96bce70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictSupportIdeal (s : Set (σ →₀ ℕ)) (hs : IsUpperSet s) :
    Ideal (MvPolynomial σ R) where
  __ := restrictSupport R s
  smul_mem' x y hy m (hm : m ∈ (x * y).support) := by
    classical
    simp only [mem_support_iff, coeff_mul, ne_eq] at hm
    obtain ⟨⟨i, j⟩, hij, e⟩ := Finset.exists_ne_zero_of_sum_ne_zero hm
    refine hs (by simp_all [eq_comm]) (hy (show j ∈ y.support by aesop))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd689a79e455a430135760db90b06299fb4bcf1792ae658d7268e07caa1d22a65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd689a79e455a430135760db90b06299fb4bcf1792ae658d7268e07caa1d22a65.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f139ca05206f1a00072f0cf1594bfdc9604b81ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
