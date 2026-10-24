# eq_path_of_eq_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8cc8cde-5c1c-5023-128d-9420f364d009",
  "kind": "theorem",
  "lexical_name": "eq_path_of_eq_image",
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
  "slug": "eq-path-of-eq-image--0962bd20e09739ae10792e7b",
  "source": {
    "blob": "49a237b4cede0ee0e7c24f97693e7805ede89786",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 111,
    "path": "GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0962bd20e09739ae10792e7b4a61d932421073e35a94f799ebaee5a6a30bf86e",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8cc8cde-5c1c-5023-128d-9420f364d009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_path_of_eq_image :
    (πₘ f).map ⟦p⟧ = hcast (start_path hfg) ≫ (πₘ g).map ⟦q⟧ ≫ hcast (end_path hfg).symm := by
  rw [Functor.conj_eqToHom_iff_heq
    ((πₘ f).map ⟦p⟧) ((πₘ g).map ⟦q⟧) (start_path hfg) (end_path hfg)]
  exact heq_path_of_eq_image hfg
#align continuous_map.homotopy.eq_path_of_eq_image ContinuousMap.Homotopy.eq_path_of_eq_image

end Casts

-- We let `X` and `Y` be spaces, and `f` and `g` be homotopic maps between them
variable {X Y : TopCat.{u}} {f g : C(X, Y)} (H : ContinuousMap.Homotopy f g) {x₀ x₁ : X}
  (p : fromTop x₀ ⟶ fromTop x₁)

/-!
These definitions set up the following diagram, for each path `p`:

            f(p)
        *--------*
        | \      |
    H₀  |   \ d  |  H₁
        |     \  |
        *--------*
            g(p)

Here, `H₀ = H.evalAt x₀` is the path from `f(x₀)` to `g(x₀)`,
and similarly for `H₁`. Similarly, `f(p)` denotes the
path in Y that the induced map `f` takes `p`, and similarly for `g(p)`.

Finally, `d`, the diagonal path, is H(0 ⟶ 1, p), the result of the induced `H` on
`Path.Homotopic.prod (0 ⟶ 1) p`, where `(0 ⟶ 1)` denotes the path from `0` to `1` in `I`.

It is clear that the diagram commutes (`H₀ ≫ g(p) = d = f(p) ≫ H₁`), but unfortunately,
many of the paths do not have defeq starting/ending points, so we end up needing some casting.
-/


/-- Interpret a homotopy `H : C(I × X, Y)` as a map `C(ULift I × X, Y)` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49a237b4cede0ee0e7c24f97693e7805ede89786` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
