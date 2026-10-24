# leftInv_leftInv_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5447947d-5491-a502-0990-0c52d01b1d7d",
  "kind": "theorem",
  "lexical_name": "leftInv_leftInv_eq",
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
  "slug": "leftinv-leftinv-eq--0ca510622e63886489aa3c69",
  "source": {
    "blob": "ccacc8d757509ff99eb8f9892d14c144f2243725",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 85,
    "path": "GRWTSK/Algebra/GroupTheory/Inverses/Variant1426e6bd5eb9d99cfd066517112c82fd50e945f5c52d81cd94cc4c7b10bd9565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ca510622e63886489aa3c697982113de345563ffef1bc799774c05195d43307",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Inverses/Variant1426e6bd5eb9d99cfd066517112c82fd50e945f5c52d81cd94cc4c7b10bd9565.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5447947d-5491-a502-0990-0c52d01b1d7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftInv_leftInv_eq (hS : S ≤ IsUnit.submonoid M) : S.leftInv.leftInv = S := by
  refine le_antisymm S.leftInv_leftInv_le ?_
  intro x hx
  have : x = ((hS hx).unit⁻¹⁻¹ : Mˣ) := by
    rw [inv_inv (hS hx).unit]
    rfl
  rw [this]
  exact S.leftInv.unit_mem_leftInv _ (S.unit_mem_leftInv _ hx)

/-- The function from `S.leftInv` to `S` sending an element to its right inverse in `S`.
This is a `MonoidHom` when `M` is commutative. -/
@[to_additive
      "The function from `S.leftAdd` to `S` sending an element to its right additive
inverse in `S`. This is an `AddMonoidHom` when `M` is commutative."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Inverses/Variant1426e6bd5eb9d99cfd066517112c82fd50e945f5c52d81cd94cc4c7b10bd9565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Inverses/Variant1426e6bd5eb9d99cfd066517112c82fd50e945f5c52d81cd94cc4c7b10bd9565.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccacc8d757509ff99eb8f9892d14c144f2243725` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
