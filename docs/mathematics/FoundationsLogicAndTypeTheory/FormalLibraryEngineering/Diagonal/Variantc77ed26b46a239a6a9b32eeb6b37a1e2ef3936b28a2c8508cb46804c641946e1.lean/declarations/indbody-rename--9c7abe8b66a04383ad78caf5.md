# indBody_rename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bc96cdd-071c-d3eb-0744-afbaa90333fb",
  "kind": "theorem",
  "lexical_name": "indBody_rename",
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
  "slug": "indbody-rename--9c7abe8b66a04383ad78caf5",
  "source": {
    "blob": "05824c89348203f442239a609d1e1bf4bed1e2fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1597,
    "line": 1591,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c7abe8b66a04383ad78caf5abd5259c8808e197fa3bd244219a96f22f7bac19",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bc96cdd-071c-d3eb-0744-afbaa90333fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1591–1597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indBody_rename (L : LogicCode S) (KY KP : QuantifierCode S) (v : Expr S) (ρ : Nat → Nat) :
    (B.indBody L KY KP v).rename (Expr.liftRen ρ) = (B.rename ρ).indBody (L.rename ρ)
      (KY.rename ρ) (KP.rename ρ) (v.rename ρ) := by
  simp only [indBody,indStep_rename,rename_comp,LogicCode.rename_comp,
    QuantifierCode.rename_comp,Expr.rename_comp,Expr.rename,Expr.liftRen,
    PureTypeSystem.Expr.liftRen]
  try rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean#L1591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05824c89348203f442239a609d1e1bf4bed1e2fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
