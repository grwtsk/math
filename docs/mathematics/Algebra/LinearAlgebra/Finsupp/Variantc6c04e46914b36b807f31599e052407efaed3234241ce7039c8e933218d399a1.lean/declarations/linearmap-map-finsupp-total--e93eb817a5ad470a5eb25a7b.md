# LinearMap.map_finsupp_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3aee5e3a-f8f8-6497-7bb4-672a4327529e",
  "kind": "theorem",
  "lexical_name": "LinearMap.map_finsupp_total",
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
  "slug": "linearmap-map-finsupp-total--e93eb817a5ad470a5eb25a7b",
  "source": {
    "blob": "7f4fa64bfc182ac63deb8c434a3d9a268108052e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1174,
    "line": 1169,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantc6c04e46914b36b807f31599e052407efaed3234241ce7039c8e933218d399a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e93eb817a5ad470a5eb25a7b3b562cddcac930e9e4b2c1ab591eb5870a8bbf73",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variantc6c04e46914b36b807f31599e052407efaed3234241ce7039c8e933218d399a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aee5e3a-f8f8-6497-7bb4-672a4327529e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1169–1174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.map_finsupp_total (f : M →ₗ[R] N) {ι : Type*} {g : ι → M} (l : ι →₀ R) :
    f (Finsupp.total ι M R g l) = Finsupp.total ι N R (f ∘ g) l := by
  -- Porting note: `(· ∘ ·)` is required.
  simp only [Finsupp.total_apply, Finsupp.total_apply, Finsupp.sum, f.map_sum, f.map_smul, (· ∘ ·)]
#align linear_map.map_finsupp_total LinearMap.map_finsupp_total

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variantc6c04e46914b36b807f31599e052407efaed3234241ce7039c8e933218d399a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantc6c04e46914b36b807f31599e052407efaed3234241ce7039c8e933218d399a1.lean#L1169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f4fa64bfc182ac63deb8c434a3d9a268108052e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
