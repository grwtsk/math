# Summable.tsum_const_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71affb23-74ce-c72b-e9d6-c3963f58ad2e",
  "kind": "theorem",
  "lexical_name": "Summable.tsum_const_smul",
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
  "slug": "summable-tsum-const-smul--582453d08a26c79b4832324e",
  "source": {
    "blob": "343ee70589c17a456ad74982b9106ae83dc12b15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 36,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:582453d08a26c79b4832324e946d51af77ba7f49dd54f847fbedc74df9b6c522",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71affb23-74ce-c72b-e9d6-c3963f58ad2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Summable.tsum_const_smul [T2Space α] (b : γ) (hf : Summable f) :
    ∑' i, b • f i = b • ∑' i, f i :=
  (hf.hasSum.const_smul _).tsum_eq

@[deprecated (since := "2025-04-12")] alias tsum_const_smul := Summable.tsum_const_smul

/-- Infinite sums commute with scalar multiplication. Version for scalars living in a `Group`, but
  not requiring any summability hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `343ee70589c17a456ad74982b9106ae83dc12b15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
