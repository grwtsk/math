# instModuleOrderDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:796ee61151ce7514c1039620be5b185262a621bfd28f88888b9c454a3b8c18c8",
  "kind": "instance",
  "lexical_name": "instModuleOrderDual",
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
  "slug": "instmoduleorderdual--31fe015d70fcc49495deac94",
  "source": {
    "blob": "977d3036aa9a0708fc07663e016bf246e7c105a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 29,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variantd20058af96b02ce48bc8af7796b23fef446c138c8c38af6eefbe0ef20068104d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31fe015d70fcc49495deac945246e28e7923def7ed6d16bc6d02f1323e8cd9ab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variantd20058af96b02ce48bc8af7796b23fef446c138c8c38af6eefbe0ef20068104d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:796ee61151ce7514c1039620be5b185262a621bfd28f88888b9c454a3b8c18c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instModuleOrderDual [Semiring k] [OrderedAddCommMonoid M] [Module k M] : Module k Mᵒᵈ
    where
  add_smul _ _ x := OrderDual.rec (add_smul _ _) x
  zero_smul m := OrderDual.rec (zero_smul _) m

section Semiring

variable [OrderedSemiring k] [OrderedAddCommGroup M] [Module k M] [OrderedSMul k M] {a b : M}
  {c : k}

/- Can be generalized from `Module k M` to `DistribMulActionWithZero k M` once it exists.
where `DistribMulActionWithZero k M`is the conjunction of `DistribMulAction k M` and
`SMulWithZero k M`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variantd20058af96b02ce48bc8af7796b23fef446c138c8c38af6eefbe0ef20068104d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variantd20058af96b02ce48bc8af7796b23fef446c138c8c38af6eefbe0ef20068104d.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `977d3036aa9a0708fc07663e016bf246e7c105a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
