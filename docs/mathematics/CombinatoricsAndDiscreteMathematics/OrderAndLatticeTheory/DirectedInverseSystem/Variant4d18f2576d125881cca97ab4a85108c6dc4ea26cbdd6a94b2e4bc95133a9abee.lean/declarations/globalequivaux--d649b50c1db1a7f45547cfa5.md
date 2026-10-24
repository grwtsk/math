# globalEquivAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa60850dd6d2af8320c103841d173a74d7dfbde965de42c205353ea8bd7a2b2f",
  "kind": "def",
  "lexical_name": "globalEquivAux",
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
  "slug": "globalequivaux--d649b50c1db1a7f45547cfa5",
  "source": {
    "blob": "cf03e12e394c7147f5b36c1ae6327e1e67eb896f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 479,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant4d18f2576d125881cca97ab4a85108c6dc4ea26cbdd6a94b2e4bc95133a9abee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d649b50c1db1a7f45547cfa5a750488e81d812cd6293ba210fbe15ea6240f8c2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant4d18f2576d125881cca97ab4a85108c6dc4ea26cbdd6a94b2e4bc95133a9abee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa60850dd6d2af8320c103841d173a74d7dfbde965de42c205353ea8bd7a2b2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private noncomputable def globalEquivAux (i : ι) :
    PEquivOn f (fun i hi ↦ (equivSucc i hi).1) (Iic i) :=
  SuccOrder.prelimitRecOn i
    (fun _ hi e ↦ pEquivOnSucc hi e fun i hi ↦ (equivSucc i hi).2)
    fun i hi e ↦ pEquivOnLim hi (fun j ↦ e j j.2) (equivLim i hi).1 (equivLim i hi).2

/-- Over a well-ordered type, construct a family of bijections by transfinite recursion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant4d18f2576d125881cca97ab4a85108c6dc4ea26cbdd6a94b2e4bc95133a9abee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant4d18f2576d125881cca97ab4a85108c6dc4ea26cbdd6a94b2e4bc95133a9abee.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf03e12e394c7147f5b36c1ae6327e1e67eb896f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
