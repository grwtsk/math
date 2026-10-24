# abs_add_seven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4285de26-534a-7ccf-b33c-245d65041946",
  "kind": "theorem",
  "lexical_name": "abs_add_seven",
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
  "slug": "abs-add-seven--dbe5400eaceeb35fb8fab2fc",
  "source": {
    "blob": "1f216d85e137279d3b32bf2fbea49681785ddfe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18,
    "line": 14,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/16533785522c9530a3f0f0ec5177a0241835e37d40b4df13f5c2f3e0ac38930aPerturbation/Variant7a78697eb0d8f220352b328d022bf1f0271a239086c95923856b0cc4bd0c7ba1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbe5400eaceeb35fb8fab2fc23230820b93a96641967fa1f2a9aba2b1fbf4056",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/16533785522c9530a3f0f0ec5177a0241835e37d40b4df13f5c2f3e0ac38930aPerturbation/Variant7a78697eb0d8f220352b328d022bf1f0271a239086c95923856b0cc4bd0c7ba1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4285de26-534a-7ccf-b33c-245d65041946`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–18.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem abs_add_seven (a b c d e f g : ℝ) :
    |a + b + c + d + e + f + g| ≤ |a| + |b| + |c| + |d| + |e| + |f| + |g| := by
  linarith only [abs_add_le a b, abs_add_le (a+b) c, abs_add_le (a+b+c) d,
    abs_add_le (a+b+c+d) e, abs_add_le (a+b+c+d+e) f, abs_add_le (a+b+c+d+e+f) g]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/16533785522c9530a3f0f0ec5177a0241835e37d40b4df13f5c2f3e0ac38930aPerturbation/Variant7a78697eb0d8f220352b328d022bf1f0271a239086c95923856b0cc4bd0c7ba1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/16533785522c9530a3f0f0ec5177a0241835e37d40b4df13f5c2f3e0ac38930aPerturbation/Variant7a78697eb0d8f220352b328d022bf1f0271a239086c95923856b0cc4bd0c7ba1.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f216d85e137279d3b32bf2fbea49681785ddfe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
