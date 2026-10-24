# inrCompHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cacd6b919b5898e3374ed9e35fca3af5561baec8a1616c3294174feab75ad56",
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
  "slug": "inrcomphomotopy--bc682e6a3948d5bdb67d624e",
  "source": {
    "blob": "c09675a4982fcb4365bd9b0114b0bcf328126d16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 244,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc682e6a3948d5bdb67d624e69b312b950806dddbfe0d4f2821fba514a6b1536",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cacd6b919b5898e3374ed9e35fca3af5561baec8a1616c3294174feab75ad56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def inrCompHomotopy (hc : ∀ j, ∃ i, c.Rel i j) :
    Homotopy (φ ≫ inr φ) 0 where
  hom i j :=
    if hij : c.Rel j i then inlX φ i j hij else 0
  zero _ _ hij := dif_neg hij
  comm j := by
    obtain ⟨i, hij⟩ := hc j
    rw [prevD_eq _ hij, dif_pos hij]
    by_cases hj : c.Rel j (c.next j)
    · simp only [comp_f, homotopyCofiber_d, zero_f, add_zero,
        inlX_d φ i j _ hij hj, dNext_eq _ hj, dif_pos hj,
        add_neg_cancel_left, inr_f]
    · rw [dNext_eq_zero _ _  hj, zero_add, zero_f, add_zero, homotopyCofiber_d,
        inlX_d' _ _ _ _ hj, comp_f, inr_f]

variable (hc : ∀ j, ∃ i, c.Rel i j)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09675a4982fcb4365bd9b0114b0bcf328126d16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
