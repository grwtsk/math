# logCounting_add_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68199092-04c2-ae61-540f-a022bf833aad",
  "kind": "theorem",
  "lexical_name": "logCounting_add_const",
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
  "slug": "logcounting-add-const--f125b2606013bd5d429be03b",
  "source": {
    "blob": "2e8dc88b8694641418f9402620a1b0702a4f5461",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 207,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f125b2606013bd5d429be03b832abeafb1127b2e2bbeac1e67009bf5ed007a01",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68199092-04c2-ae61-540f-a022bf833aad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem logCounting_add_const (hf : MeromorphicOn f univ) :
    logCounting (f + fun _ ↦ a₀) ⊤ = logCounting f ⊤ := by
  apply logCounting_add_analyticOn hf analyticOn_const

/--
Special case of `logCounting_add_analyticOn`: Subtracting a constant does not change the counting
function counting poles.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e8dc88b8694641418f9402620a1b0702a4f5461` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
