# logMap_eq_of_normAtPlace_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b90b5e99-430a-6d52-e861-77890be4956c",
  "kind": "theorem",
  "lexical_name": "logMap_eq_of_normAtPlace_eq",
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
  "slug": "logmap-eq-of-normatplace-eq--3855d184a31d9c24ce7d97fb",
  "source": {
    "blob": "14937dc62d4fec76769bc748423b8cd19e70d07c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 170,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3855d184a31d9c24ce7d97fbcaaa97c6217ea31fedb7f1a58373f76673ee7e06",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b90b5e99-430a-6d52-e861-77890be4956c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logMap_eq_of_normAtPlace_eq (h : ∀ w, normAtPlace w x = normAtPlace w y) :
    logMap x = logMap y := by
  ext
  simp_rw [logMap_apply, h, norm_eq_of_normAtPlace_eq h]

end logMap

noncomputable section

open NumberField.Units NumberField.Units.dirichletUnitTheorem

variable [NumberField K]

open scoped Classical in
/-- The fundamental cone is a cone in the mixed space, i.e. a subset fixed by multiplication by
a nonzero real number, see `smul_mem_of_mem`, that is also a fundamental domain for the action
of `(𝓞 K)ˣ` modulo torsion, see `exists_unit_smul_mem` and `torsion_smul_mem_of_mem`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14937dc62d4fec76769bc748423b8cd19e70d07c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
