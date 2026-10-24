# exists_locallyConstant_fin_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b5b9a23-a745-d2ff-ec7c-dcdea03a6435",
  "kind": "theorem",
  "lexical_name": "exists_locallyConstant_fin_two",
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
  "slug": "exists-locallyconstant-fin-two--3bc1709923f5c2accd8dbf99",
  "source": {
    "blob": "1252e1c215be14827bf2a14b4fd581ce82be17d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 126,
    "path": "GRWTSK/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bc1709923f5c2accd8dbf99ff8725cca2fd671a32934f91accf9023bd1de7bc",
  "verification": {
    "reference": "docs/verification/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b5b9a23-a745-d2ff-ec7c-dcdea03a6435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_locallyConstant_fin_two (hC : IsLimit C) (f : LocallyConstant C.pt (Fin 2)) :
    ∃ (j : J) (g : LocallyConstant (F.obj j) (Fin 2)), f = g.comap (C.π.app _) := by
  let U := f ⁻¹' {0}
  have hU : IsClopen U := f.isLocallyConstant.isClopen_fiber _
  obtain ⟨j, V, hV, h⟩ := exists_clopen_of_cofiltered C hC hU
  use j, LocallyConstant.ofClopen hV
  apply LocallyConstant.locallyConstant_eq_of_fiber_zero_eq
  rw [LocallyConstant.coe_comap _ _ (C.π.app j).continuous]
  conv_rhs => rw [Set.preimage_comp]
  rw [LocallyConstant.ofClopen_fiber_zero hV, ← h]
set_option linter.uppercaseLean3 false in
#align Profinite.exists_locally_constant_fin_two Profinite.exists_locallyConstant_fin_two

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1252e1c215be14827bf2a14b4fd581ce82be17d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
