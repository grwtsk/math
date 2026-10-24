# basis_toMatrix_basisFun_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e118403-cc32-8759-c788-28081b42d12e",
  "kind": "theorem",
  "lexical_name": "basis_toMatrix_basisFun_mul",
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
  "slug": "basis-tomatrix-basisfun-mul--4669711bb395fac2aa01ff71",
  "source": {
    "blob": "7592849e10e9f274cce1fff345663ebcf9fe2125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1236,
    "line": 1208,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4669711bb395fac2aa01ff71c5a4b4cd4923fc9a7461dccb0762e80be8393aad",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e118403-cc32-8759-c788-28081b42d12e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1208–1236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem basis_toMatrix_basisFun_mul [Fintype ι]
    {𝕜} [SeminormedCommRing 𝕜] (b : Basis ι 𝕜 (PiLp p fun _ : ι => 𝕜))
    (A : Matrix ι ι 𝕜) :
    b.toMatrix (PiLp.basisFun _ _ _) * A =
      Matrix.of fun i j => b.repr (toLp p (Aᵀ j)) i := by
  have := basis_toMatrix_basisFun_mul (b.map (WithLp.linearEquiv _ 𝕜 _)) A
  simp_rw [← PiLp.basisFun_map p, Basis.map_repr, LinearEquiv.trans_apply,
    WithLp.linearEquiv_symm_apply, Basis.toMatrix_map, Function.comp_def, Basis.map_apply,
    LinearEquiv.symm_apply_apply] at this
  exact this

section toPi

/-!
### `L^p` distance on a product space

In this section we define a pseudometric space structure on `Π i, α i`, as well as a seminormed
group structure. These are meant to be used to put the desired instances on type synonyms
of `Π i, α i`. See for instance `Matrix.frobeniusSeminormedAddCommGroup`.
-/

-- This prevents Lean from elaborating terms of `Π i, α i` with an unintended norm.
attribute [-instance] Pi.seminormedAddGroup

variable [Fact (1 ≤ p)] [Fintype ι]

/-- This definition allows to endow `Π i, α i` with the Lp distance with the uniformity and
bornology being defeq to the product ones. It is useful to endow a type synonym of `Π i, α i` with
the Lp distance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean#L1208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7592849e10e9f274cce1fff345663ebcf9fe2125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
