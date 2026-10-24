# liftCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42d2193bde48446c97c17c785bb44ce6228bcb42fb755a5921d6b03aa50f471a",
  "kind": "def",
  "lexical_name": "liftCLM",
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
  "slug": "liftclm--db840ef7ae323807e7ab1b87",
  "source": {
    "blob": "5c144635f87dcd791abd45709349a656924aad0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 406,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant89a2b74ff749199e2554b8e0de09c1e2474ecd7b4c07638b97e404970e469603.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db840ef7ae323807e7ab1b87f7de8e523c7ba27e5975292124687c4405554601",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant89a2b74ff749199e2554b8e0de09c1e2474ecd7b4c07638b97e404970e469603.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42d2193bde48446c97c17c785bb44ce6228bcb42fb755a5921d6b03aa50f471a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def liftCLM {σ : R →+* S} (f : M →SL[σ] N) (hf : ∀ x y, Inseparable x y → f x = f y) :
    SeparationQuotient M →SL[σ] N where
  toFun := SeparationQuotient.lift f hf
  map_add' := Quotient.ind₂ <| map_add f
  map_smul' {r} := Quotient.ind <| map_smulₛₗ f r

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant89a2b74ff749199e2554b8e0de09c1e2474ecd7b4c07638b97e404970e469603.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant89a2b74ff749199e2554b8e0de09c1e2474ecd7b4c07638b97e404970e469603.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c144635f87dcd791abd45709349a656924aad0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
