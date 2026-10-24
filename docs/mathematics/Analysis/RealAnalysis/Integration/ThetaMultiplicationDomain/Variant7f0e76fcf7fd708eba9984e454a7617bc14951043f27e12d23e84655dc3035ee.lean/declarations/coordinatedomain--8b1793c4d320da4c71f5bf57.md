# coordinateDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35dc18d7d55e75deb198fe67efc3c38c89c2fdd941b339de5dcaa396c693a144",
  "kind": "def",
  "lexical_name": "coordinateDomain",
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
  "slug": "coordinatedomain--8b1793c4d320da4c71f5bf57",
  "source": {
    "blob": "c589bad8a351a8af9c3716ffaf51e14b1fad40c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 23,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b1793c4d320da4c71f5bf57a86999c9a0264dd1a0a00b6d8a6c714056d3dc09",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35dc18d7d55e75deb198fe67efc3c38c89c2fdd941b339de5dcaa396c693a144`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coordinateDomain : Submodule ℂ (Lp ℂ 2 μ) where
  carrier := {f : Lp ℂ 2 μ | MemLp (fun x : ℝ => (x : ℂ) * f x) 2 μ}
  zero_mem' := by
    change MemLp (fun x : ℝ => (x : ℂ) * (0 : Lp ℂ 2 μ) x) 2 μ
    apply (MemLp.zero : MemLp (0 : ℝ → ℂ) 2 μ).ae_eq
    filter_upwards [Lp.coeFn_zero ℂ 2 μ] with x hx
    change (0 : ℂ) = (x : ℂ) * (0 : Lp ℂ 2 μ) x
    rw [hx]
    simp
  add_mem' := by
    intro f g hf hg
    change MemLp (fun x : ℝ => (x : ℂ) * (f + g) x) 2 μ
    change MemLp (fun x : ℝ => (x : ℂ) * f x) 2 μ at hf
    change MemLp (fun x : ℝ => (x : ℂ) * g x) 2 μ at hg
    apply (hf.add hg).ae_eq
    filter_upwards [Lp.coeFn_add f g] with x hx
    change (x : ℂ) * f x + (x : ℂ) * g x = (x : ℂ) * (f + g) x
    rw [hx]
    exact (mul_add _ _ _).symm
  smul_mem' := by
    intro c f hf
    apply (hf.const_smul c).ae_eq
    filter_upwards [Lp.coeFn_smul c f] with x hx
    simp [hx, smul_eq_mul, mul_left_comm]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c589bad8a351a8af9c3716ffaf51e14b1fad40c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
