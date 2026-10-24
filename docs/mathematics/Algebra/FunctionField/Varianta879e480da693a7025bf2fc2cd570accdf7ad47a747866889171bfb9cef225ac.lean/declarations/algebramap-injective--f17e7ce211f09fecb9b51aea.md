# algebraMap_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acc0800d-f0a8-20dd-1610-42aeb3177d4c",
  "kind": "theorem",
  "lexical_name": "algebraMap_injective",
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
  "slug": "algebramap-injective--f17e7ce211f09fecb9b51aea",
  "source": {
    "blob": "4a55cd2c29714c907ff85e57ab6dda9fd4109a03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 87,
    "path": "GRWTSK/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f17e7ce211f09fecb9b51aeac1462bcff83ed6f1cee295ec0a21d772e18cd07d",
  "verification": {
    "reference": "docs/verification/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acc0800d-f0a8-20dd-1610-42aeb3177d4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraMap_injective [Algebra Fq[X] F] [Algebra (RatFunc Fq) F]
    [IsScalarTower Fq[X] (RatFunc Fq) F] : Function.Injective (⇑(algebraMap Fq[X] F)) := by
  rw [IsScalarTower.algebraMap_eq Fq[X] (RatFunc Fq) F]
  exact (algebraMap (RatFunc Fq) F).injective.comp (IsFractionRing.injective Fq[X] (RatFunc Fq))

@[deprecated (since := "2025-03-03")]
alias _root_.algebraMap_injective := FunctionField.algebraMap_injective

/-- The function field analogue of `NumberField.ringOfIntegers`:
`FunctionField.ringOfIntegers Fq Fqt F` is the integral closure of `Fq[t]` in `F`.

We don't actually assume `F` is a function field over `Fq` in the definition,
only when proving its properties.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a55cd2c29714c907ff85e57ab6dda9fd4109a03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
