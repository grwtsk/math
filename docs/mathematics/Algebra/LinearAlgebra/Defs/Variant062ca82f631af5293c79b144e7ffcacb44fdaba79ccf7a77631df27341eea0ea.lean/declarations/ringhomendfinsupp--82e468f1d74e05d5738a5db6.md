# ringHomEndFinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5d144e7ee10c8074f1675d996cacc1959545780ae974af4e2cdb407b86ba0f2",
  "kind": "def",
  "lexical_name": "ringHomEndFinsupp",
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
  "slug": "ringhomendfinsupp--82e468f1d74e05d5738a5db6",
  "source": {
    "blob": "b1d08ffe87677b617138f97d3ec536af29d96e5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 336,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant062ca82f631af5293c79b144e7ffcacb44fdaba79ccf7a77631df27341eea0ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82e468f1d74e05d5738a5db6aaae07feb5eb325d8773c4294ffa7c5eb252e290",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant062ca82f631af5293c79b144e7ffcacb44fdaba79ccf7a77631df27341eea0ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5d144e7ee10c8074f1675d996cacc1959545780ae974af4e2cdb407b86ba0f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] noncomputable def ringHomEndFinsupp :
    End (End R M) M →+* End (End R (ι →₀ M)) (ι →₀ M) where
  toFun f :=
  { toFun := Finsupp.mapRange.addMonoidHom f
    map_add' := map_add _
    map_smul' g x := x.induction_linear (by simp)
      (fun _ _ h h' ↦ by rw [smul_add, map_add, h, h', map_add, smul_add]) fun i m ↦ by
        ext j
        change f (Finsupp.lapply j ∘ₗ g ∘ₗ Finsupp.lsingle i • m) = _
        rw [map_smul]
        simp }
  map_one' := by ext; simp
  map_mul' _ _ := by ext; simp
  map_zero' := by ext; simp
  map_add' _ _ := by ext; simp

variable {ι}

/-- If `M` is an `R`-module and `ι` is a nonempty type, then every additive endomorphism
of `ι →₀ M` that commutes with all `R`-endomorphisms of `ι →₀ M` comes from an additive
endomorphism of `M` that commutes with all `R`-endomorphisms of `M`.
See (15) in F4 of §28 on p.131 of [Lorenz2008]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant062ca82f631af5293c79b144e7ffcacb44fdaba79ccf7a77631df27341eea0ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant062ca82f631af5293c79b144e7ffcacb44fdaba79ccf7a77631df27341eea0ea.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1d08ffe87677b617138f97d3ec536af29d96e5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
