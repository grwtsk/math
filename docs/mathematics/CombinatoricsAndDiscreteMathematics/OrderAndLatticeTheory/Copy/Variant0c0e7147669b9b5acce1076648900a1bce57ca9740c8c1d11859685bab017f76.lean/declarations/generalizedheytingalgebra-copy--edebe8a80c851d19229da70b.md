# GeneralizedHeytingAlgebra.copy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:299ebc39c12a2019a49ecdf89cc851f071dae69ed0b2ea1465c2313afb685c96",
  "kind": "def",
  "lexical_name": "GeneralizedHeytingAlgebra.copy",
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
  "slug": "generalizedheytingalgebra-copy--edebe8a80c851d19229da70b",
  "source": {
    "blob": "c2864cf0a684d6e0dd526ea2b2995fea43176e28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Copy/Variant0c0e7147669b9b5acce1076648900a1bce57ca9740c8c1d11859685bab017f76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edebe8a80c851d19229da70b5bcc932d01c332be94dc8acad61343d22d03c31e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Copy/Variant0c0e7147669b9b5acce1076648900a1bce57ca9740c8c1d11859685bab017f76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:299ebc39c12a2019a49ecdf89cc851f071dae69ed0b2ea1465c2313afb685c96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GeneralizedHeytingAlgebra.copy (c : GeneralizedHeytingAlgebra α)
    (le : α → α → Prop) (eq_le : le = (by infer_instance : LE α).le)
    (top : α) (eq_top : top = (by infer_instance : Top α).top)
    (sup : α → α → α) (eq_sup : sup = (by infer_instance : Max α).max)
    (inf : α → α → α) (eq_inf : inf = (by infer_instance : Min α).min)
    (himp : α → α → α) (eq_himp : himp = (by infer_instance : HImp α).himp) :
    GeneralizedHeytingAlgebra α where
  __ := Lattice.copy (@GeneralizedHeytingAlgebra.toLattice α c) le eq_le sup eq_sup inf eq_inf
  __ := OrderTop.copy (@GeneralizedHeytingAlgebra.toOrderTop α c) top eq_top
    (by rw [← eq_le]; exact fun _ _ ↦ .rfl)
  himp := himp
  le_himp_iff _ _ _ := by simp [eq_le, eq_himp, eq_inf]

/-- A function to create a provable equal copy of a generalised coheyting algebra
with possibly different definitional equalities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Copy/Variant0c0e7147669b9b5acce1076648900a1bce57ca9740c8c1d11859685bab017f76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Copy/Variant0c0e7147669b9b5acce1076648900a1bce57ca9740c8c1d11859685bab017f76.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2864cf0a684d6e0dd526ea2b2995fea43176e28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
