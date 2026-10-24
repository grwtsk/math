# liftEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e40ddafd9096c744cee65d0e68194bc047f668928d55ab6bf9d1e92cc2761491",
  "kind": "def",
  "lexical_name": "liftEquiv",
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
  "slug": "liftequiv--5d2dd09a44ebb1f632d49904",
  "source": {
    "blob": "f1dd8f17aafb3b3317c7346db0943303199556b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 120,
    "path": "GRWTSK/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d2dd09a44ebb1f632d49904fe421d3a1c3f0b393a1497c6e80df67c8e9853f5",
  "verification": {
    "reference": "docs/verification/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e40ddafd9096c744cee65d0e68194bc047f668928d55ab6bf9d1e92cc2761491`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftEquiv : (𝒜 →ₐᵍ[R] (ℬ · |>.restrictScalars R)) ≃ ((𝒜 · |>.baseChange S) →ₐᵍ[S] ℬ) where
  toFun f :=
    { AlgHom.liftEquiv R S A B f with
      map_mem hx := by
        obtain ⟨x, rfl⟩ := toBaseChange_surjective' _ _ hx
        induction x with
        | add => simp_all [add_mem]
        | tmul r x => simpa using smul_mem _ _ <| by exact f.map_mem x.2 }
  invFun f :=
    { AlgHom.liftEquiv R S A B |>.symm f with
      map_mem hx := f.map_mem <| tmul_mem_baseChange_of_mem _ hx }
  left_inv f := coe_toAlgHom_injective <| by simp
  right_inv f := coe_toAlgHom_injective <| by simp

variable {𝒜 ℬ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1dd8f17aafb3b3317c7346db0943303199556b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
