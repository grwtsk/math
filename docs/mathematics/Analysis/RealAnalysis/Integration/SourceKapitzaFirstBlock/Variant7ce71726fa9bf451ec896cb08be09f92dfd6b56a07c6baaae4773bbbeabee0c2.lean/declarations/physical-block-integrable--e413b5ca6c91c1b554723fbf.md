# physical_block_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:763097a2-c3fa-ece0-6498-553cb0018ea7",
  "kind": "theorem",
  "lexical_name": "physical_block_integrable",
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
  "slug": "physical-block-integrable--e413b5ca6c91c1b554723fbf",
  "source": {
    "blob": "1466ed9255cb76417b8d94701a259f187ddc0122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 169,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant7ce71726fa9bf451ec896cb08be09f92dfd6b56a07c6baaae4773bbbeabee0c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e413b5ca6c91c1b554723fbfca4db65ae90c0b2c2257e1a78cba755e526cf129",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant7ce71726fa9bf451ec896cb08be09f92dfd6b56a07c6baaae4773bbbeabee0c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:763097a2-c3fa-ece0-6498-553cb0018ea7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physical_block_integrable (A a b : ℝ) (hA : 0 < A) (hab : a ≤ b) :
    IntervalIntegrable (fun s => kapitzaWeight A s * nonaffineDiscrepancy A s)
      volume a b := by
  have hell : Continuous (affineTrend A) := by unfold affineTrend; fun_prop
  have hz := (normalizedPsiError_intervalIntegrable a b hab).sub
    (hell.intervalIntegrable a b)
  simpa only [nonaffineDiscrepancy, mul_comm] using hz.mul_continuousOn
    (kapitzaWeight_continuous A hA).continuousOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant7ce71726fa9bf451ec896cb08be09f92dfd6b56a07c6baaae4773bbbeabee0c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant7ce71726fa9bf451ec896cb08be09f92dfd6b56a07c6baaae4773bbbeabee0c2.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1466ed9255cb76417b8d94701a259f187ddc0122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
