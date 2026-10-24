# addMonoidAlgebraRingEquivDirectSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f24a89a475fc0c07bd77f8a12623c5fdb306926b59c3fa89741e9923e5dbd8a7",
  "kind": "def",
  "lexical_name": "addMonoidAlgebraRingEquivDirectSum",
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
  "slug": "addmonoidalgebraringequivdirectsum--4baec38765a6a2b95ec90d13",
  "source": {
    "blob": "87686f1fddf62e8d29d09c3fe3f2593b6a20524d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 257,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4baec38765a6a2b95ec90d130df56246fc6cecb18c8ebcd6737c1cd2ebfb96f8",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f24a89a475fc0c07bd77f8a12623c5fdb306926b59c3fa89741e9923e5dbd8a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addMonoidAlgebraRingEquivDirectSum [DecidableEq ι] [AddMonoid ι] [Semiring M]
    [∀ m : M, Decidable (m ≠ 0)] : AddMonoidAlgebra M ι ≃+* ⨁ _ : ι, M :=
  { (addMonoidAlgebraAddEquivDirectSum : AddMonoidAlgebra M ι ≃+ ⨁ _ : ι, M) with
    toFun := AddMonoidAlgebra.toDirectSum
    invFun := DirectSum.toAddMonoidAlgebra
    map_mul' := AddMonoidAlgebra.toDirectSum_mul }

/-- The algebra version of `AddMonoidAlgebra.addMonoidAlgebraEquivDirectSum`. -/
@[simps -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87686f1fddf62e8d29d09c3fe3f2593b6a20524d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
