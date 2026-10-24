# injective_constr_of_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:676fae41-3367-aab4-fdec-737564a41c49",
  "kind": "theorem",
  "lexical_name": "injective_constr_of_linearIndependent",
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
  "slug": "injective-constr-of-linearindependent--ebe041bcfb4f7ccc8fa40b0f",
  "source": {
    "blob": "4c31632f323f38a612b7802ddf8fbdb5145c8cc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 104,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebe041bcfb4f7ccc8fa40b0f9d5508421645eb634869172afcdde05d8580a9a9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:676fae41-3367-aab4-fdec-737564a41c49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_constr_of_linearIndependent
    [Semiring R₂] [Module R₂ M'] [SMulCommClass R R₂ M'] {v : ι → M'}
    (hv : LinearIndependent R v) : Injective (b.constr R₂ v) :=
  fun _ _ hab ↦ b.repr.injective <| hv.finsuppLinearCombination_injective <| by
    simpa [constr_def] using hab

end Properties

variable {v : ι → M} {x y : M}

section Mk

variable (hli : LinearIndependent R v) (hsp : ⊤ ≤ span R (range v))

/-- A linear independent family of vectors spanning the whole module is a basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c31632f323f38a612b7802ddf8fbdb5145c8cc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
