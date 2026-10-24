# OrderIso.dualAntisymmetrization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2b6dd4055b708650abf6991ccc6f939d50a91ae36774d9af18fc966ae764c79",
  "kind": "def",
  "lexical_name": "OrderIso.dualAntisymmetrization",
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
  "slug": "orderiso-dualantisymmetrization--7d3e71221cd3b42b28e9a3f0",
  "source": {
    "blob": "b60a20d06ef4cc39b77214fd08cb9bc0375ea585",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 373,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Antisymmetrization/Varianted8dc4e7cdd3332129a7a72727def9925221540564964bbad1cf36ebc6cf55ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d3e71221cd3b42b28e9a3f09009048e8a82acef3c05824cff6236945dbe1e09",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Antisymmetrization/Varianted8dc4e7cdd3332129a7a72727def9925221540564964bbad1cf36ebc6cf55ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2b6dd4055b708650abf6991ccc6f939d50a91ae36774d9af18fc966ae764c79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OrderIso.dualAntisymmetrization :
    (Antisymmetrization α (· ≤ ·))ᵒᵈ ≃o Antisymmetrization αᵒᵈ (· ≤ ·) where
  toFun := (Quotient.map' id) fun _ _ => And.symm
  invFun := (Quotient.map' id) fun _ _ => And.symm
  left_inv a := Quotient.inductionOn' a fun a => by simp_rw [Quotient.map'_mk'', id]
  right_inv a := Quotient.inductionOn' a fun a => by simp_rw [Quotient.map'_mk'', id]
  map_rel_iff' := @fun a b => Quotient.inductionOn₂' a b fun _ _ => Iff.rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Antisymmetrization/Varianted8dc4e7cdd3332129a7a72727def9925221540564964bbad1cf36ebc6cf55ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Antisymmetrization/Varianted8dc4e7cdd3332129a7a72727def9925221540564964bbad1cf36ebc6cf55ee.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b60a20d06ef4cc39b77214fd08cb9bc0375ea585` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
