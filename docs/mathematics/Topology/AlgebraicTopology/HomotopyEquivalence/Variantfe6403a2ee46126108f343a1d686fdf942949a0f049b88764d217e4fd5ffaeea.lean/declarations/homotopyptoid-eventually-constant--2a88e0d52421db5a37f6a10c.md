# homotopyPToId_eventually_constant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72cf139d-d5cf-31fa-e26f-aa5b27a44894",
  "kind": "theorem",
  "lexical_name": "homotopyPToId_eventually_constant",
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
  "slug": "homotopyptoid-eventually-constant--2a88e0d52421db5a37f6a10c",
  "source": {
    "blob": "58e359db39c5b3664a000124c02234508011b595",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 61,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyEquivalence/Variantfe6403a2ee46126108f343a1d686fdf942949a0f049b88764d217e4fd5ffaeea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a88e0d52421db5a37f6a10c702a22f5eda7aa9136079127343b14b9ea74a8cc",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyEquivalence/Variantfe6403a2ee46126108f343a1d686fdf942949a0f049b88764d217e4fd5ffaeea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72cf139d-d5cf-31fa-e26f-aa5b27a44894`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homotopyPToId_eventually_constant {q n : ℕ} (hqn : n < q) :
    ((homotopyPToId X (q + 1)).hom n (n + 1) : X _⦋n⦌ ⟶ X _⦋n + 1⦌) =
      (homotopyPToId X q).hom n (n + 1) := by
  simp only [homotopyHσToZero, AlternatingFaceMapComplex.obj_X, Homotopy.trans_hom,
    Homotopy.ofEq_hom, Pi.zero_apply, Homotopy.add_hom, Homotopy.compLeft_hom, add_zero,
    Homotopy.nullHomotopy'_hom, ComplexShape.down_Rel, hσ'_eq_zero hqn (c_mk (n + 1) n rfl),
    dite_eq_ite, ite_self, comp_zero, zero_add, homotopyPToId]

/-- Construction of the homotopy from `PInfty` to the identity using eventually
(termwise) constant homotopies from `P q` to the identity for all `q` -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyEquivalence/Variantfe6403a2ee46126108f343a1d686fdf942949a0f049b88764d217e4fd5ffaeea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyEquivalence/Variantfe6403a2ee46126108f343a1d686fdf942949a0f049b88764d217e4fd5ffaeea.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58e359db39c5b3664a000124c02234508011b595` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
