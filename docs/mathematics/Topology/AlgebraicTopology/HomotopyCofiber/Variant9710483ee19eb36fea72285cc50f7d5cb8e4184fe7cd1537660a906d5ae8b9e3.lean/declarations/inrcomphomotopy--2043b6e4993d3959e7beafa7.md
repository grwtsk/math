# inrCompHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37b0d99a6a21e7ef3e73c6c5f77cf7ad680fb8ec92b441d817ef532548825899",
  "kind": "def",
  "lexical_name": "inrCompHomotopy",
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
  "slug": "inrcomphomotopy--2043b6e4993d3959e7beafa7",
  "source": {
    "blob": "14c963e746778d71f0c87be08db807068f06e09a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 284,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2043b6e4993d3959e7beafa76e95ce80e4573103d1c0056476df685ec4ec707c",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37b0d99a6a21e7ef3e73c6c5f77cf7ad680fb8ec92b441d817ef532548825899`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def inrCompHomotopy (hc : ∀ j, ∃ i, c.Rel i j) :
    Homotopy (φ ≫ inr φ) 0 where
  hom i j :=
    if hij : c.Rel j i then inlX φ i j hij else 0
  zero _ _ hij := dite_eq_right hij
  comm j := by
    obtain ⟨i, hij⟩ := hc j
    rw [prevD_eq _ hij, dite_eq_left hij]
    by_cases hj : c.Rel j (c.next j)
    · simp only [comp_f, homotopyCofiber_d, zero_f, add_zero,
        inlX_d φ i j _ hij hj, dNext_eq _ hj, dite_eq_left hj,
        add_neg_cancel_left, inr_f]
    · rw [dNext_eq_zero _ _ hj, zero_add, zero_f, add_zero, homotopyCofiber_d,
        inlX_d' _ _ _ _ hj, comp_f, inr_f]

variable (hc : ∀ j, ∃ i, c.Rel i j)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14c963e746778d71f0c87be08db807068f06e09a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
