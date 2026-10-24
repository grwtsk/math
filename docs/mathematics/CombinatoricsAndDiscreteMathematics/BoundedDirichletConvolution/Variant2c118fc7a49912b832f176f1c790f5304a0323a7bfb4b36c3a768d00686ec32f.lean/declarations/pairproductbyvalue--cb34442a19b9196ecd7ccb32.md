# pairProductByValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fddcfd496078c63f8f4213e5a2d3821c075b8fa005d852b0ef17979bd42cf1c",
  "kind": "def",
  "lexical_name": "pairProductByValue",
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
  "slug": "pairproductbyvalue--cb34442a19b9196ecd7ccb32",
  "source": {
    "blob": "834cde36a459f1a2eb79e2b56a00ae1814ac9013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant2c118fc7a49912b832f176f1c790f5304a0323a7bfb4b36c3a768d00686ec32f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb34442a19b9196ecd7ccb324a244b59c1580b48dcdc76b14ef0ab6ce74be824",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant2c118fc7a49912b832f176f1c790f5304a0323a7bfb4b36c3a768d00686ec32f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fddcfd496078c63f8f4213e5a2d3821c075b8fa005d852b0ef17979bd42cf1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pairProductByValue
    [Semiring R]
    (N n : Nat)
    (f g : ArithFn R) : R :=
  ∑ de ∈ ((Finset.Icc 1 N).product (Finset.Icc 1 N)).filter
      (fun de : Nat × Nat => de.1 * de.2 = n),
    f de.1 * g de.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant2c118fc7a49912b832f176f1c790f5304a0323a7bfb4b36c3a768d00686ec32f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant2c118fc7a49912b832f176f1c790f5304a0323a7bfb4b36c3a768d00686ec32f.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `834cde36a459f1a2eb79e2b56a00ae1814ac9013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
